import 'dart:async';
import 'dart:convert';
import 'package:flutter_demo/web_view/jsb_message_model.dart';
import 'package:logging/logging.dart';

import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';


final webLog = Logger('web.log');


/// channel name
const String jsbChannelName = 'JSBridge';

/// callback handel
const String jsbHandelName = 'jsbridge.handleJSResponseFromNative';

// 基础属性,
mixin WebViewBaseMixin {
  
  // webview 控制
  WebViewController get mixinContrl;

  //注册jsb handel
  final Map<String, JSBMessageModelHandel> _handelMap = {};

  // 为什么持有, 为了重置平台(delegate.platform)相关的方法
  late NavigationDelegate delegate = NavigationDelegate(
    onProgress: onDelegateProgress,
    onPageStarted: onDelegatePageStarted,
    onPageFinished: onDelegatePageFinished,
    onWebResourceError: onDelegateWebResourceError,
    onNavigationRequest: onDelegateNavigationRequest,
    onHttpError: onHttpError,
    onUrlChange: onUrlChange,
  );

  // add jsb channel
  void addJSBChannel() {
    mixinContrl.addJavaScriptChannel(jsbChannelName, onMessageReceived: (JavaScriptMessage message) {
      webLog.info('[on message receiver][message :${message.message}]');
      onJSBridgetMessage(JSBMessageModel(message.message));
    });
  }

  // add jsb callback handel
  void addJSBBridget(JSBMessageModelHandel handel) {
    if (handel.method.isEmpty || handel.domain.isEmpty) {
      webLog.warning('[add jsb][empty handel, ignore] ');
      return;
    }
    if (_handelMap.containsKey(handel.method)) {
      webLog.warning('[add jsb][override handel :${handel.method}]');
    }
    _handelMap[handel.key] = handel;
  }

  // call h5 function, 回调H5
  Future<dynamic> callH5Callback<D>(String callback, {D? params}) {
    if (callback.isEmpty) return Future.value();
    String jsStr = '';
    if (params == null) {
      jsStr = '$jsbHandelName("$callback");';
    } else {
      jsStr = '$jsbHandelName("$callback", ${json.encode(params)});';
    }
    if (jsStr.isEmpty) return Future.value();
    try {
      webLog.info('[call H5 function][jsStr :$jsStr]');
      return mixinContrl.runJavaScript(jsStr);
    } catch (e) {
      webLog.warning('[call H5 function][error][jsStr :$jsStr]');
      return Future.value();
    }
  }

  /// js-bridget-handel-bus
  /// 前端调用 App 方法, 消息分发入口
  Future<void> onJSBridgetMessage(JSBMessageModel model) async {
    // find jsb handel model
    final jsbHandelModel = _handelMap[model.method] ?? JSBMessageModelHandel.empty(onJSBNoFoundCallback);
    try {
      final res = await jsbHandelModel.handel(model);
      if (jsbHandelModel.customHandel) return; //eg : H5拦截返回事件, H5 设置navConfig 按钮js, 键盘高度变化, 生命周期
      // 统一处理 回调
      if (res == null) {
        callH5Callback(model.callback);
      } else {
        callH5Callback(model.callback, params: res);
      }
    } catch (e) {
      webLog.info('call js methode error $e');
      callH5Callback(model.callback);
    }
  }

  /// log info, jsb handel not found
  void onJSBNoFoundCallback(JSBMessageModel model) {
    webLog.info('[jsb no found][${model.desp}}');
  }

  // 设置UserAgent
  Future<void> mixinSetUserAgent(String userAgent) async {
    final ua = await mixinContrl.getUserAgent() ?? '';
    mixinContrl.setUserAgent('$ua $userAgent');
  }

  /// init web controller
  WebViewController mixinInitWebController() {
    late final PlatformWebViewControllerCreationParams params;
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      params = WebKitWebViewControllerCreationParams(
        allowsInlineMediaPlayback: true,
        mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
      );
    } else {
      params = const PlatformWebViewControllerCreationParams();
    }
    WebViewController wbCtrl = WebViewController.fromPlatformCreationParams(params);
    wbCtrl.setBackgroundColor(Colors.transparent);
    wbCtrl.setNavigationDelegate(delegate);
    wbCtrl.setJavaScriptMode(JavaScriptMode.unrestricted);
    if (wbCtrl.platform is AndroidWebViewController) {
      AndroidWebViewController.enableDebugging(true);
    }

    return wbCtrl;
  }

  // 进度条
  void onDelegateProgress(int progres) {}


  void onDelegatePageStarted(String url) async {
    webLog.info('[on page started][url :$url]');
  }

  void onDelegatePageFinished(String url) async {
    webLog.info('[on page finished][url :$url]');
  }

  FutureOr<NavigationDecision> onDelegateNavigationRequest(NavigationRequest request) async => NavigationDecision.navigate;

  // 资源错误处理
  void onDelegateWebResourceError(WebResourceError error) async { }

  void onHttpError(HttpResponseError error) { }

  void onScrollPositionChange(ScrollPositionChange change) { }

  void onUrlChange(UrlChange change) { }
}

/// WebView mixin :
mixin WebViewMixin<T extends StatefulWidget> on State<T> implements WebViewBaseMixin {
  void addCommonJSBridgetHandle() {
    // base jsb
    addJSBBridget(JSBMessageModelHandel.base('pop', onJSBPopCallback));
    addJSBBridget(JSBMessageModelHandel.base('delay_pop', onJSBDelayPopCallback, customHandel: true));
  }

  Future<void> onJSBPopCallback(JSBMessageModel model)  async {
    // navService.closePage(model.args);
    return Navigator.of(context).pop(model.args);
  }

  Future<void> onJSBDelayPopCallback(JSBMessageModel model)  async {
    // navService.closePage(model.args);
    return Navigator.of(context).pop(model.args);
  }

  void mixinDispose() {
    /// 将 jsbChannelName 设置成空, 避免 释放不了
    mixinContrl.addJavaScriptChannel(jsbChannelName, onMessageReceived: (e) {});

    void emptyAuthorRequest(HttpAuthRequest request) {}
    delegate.platform.setOnHttpAuthRequest(emptyAuthorRequest);
    void emptyUrlChange(UrlChange change) {}
    delegate.platform.setOnUrlChange(emptyUrlChange);
    void emptyError(WebResourceError error) {}
    delegate.platform.setOnWebResourceError(emptyError);
    void emptyProgress(int progress) {}
    delegate.platform.setOnProgress(emptyProgress);
    void emptyHttpResponseError(HttpResponseError error) {}
    delegate.platform.setOnHttpError(emptyHttpResponseError);
    void emptyPageFinished(String url) {}
    delegate.platform.setOnPageFinished(emptyPageFinished);
    delegate.platform.setOnPageStarted(emptyPageFinished);
    FutureOr<NavigationDecision> emptyNavRequest(NavigationRequest navigationRequest) => NavigationDecision.navigate;
    delegate.platform.setOnNavigationRequest(emptyNavRequest);
    
    // 这两个方法, 会有异常 
    // void emptyConsloeMessage(JavaScriptConsoleMessage message) {}
    // mixinContrl.setOnConsoleMessage(emptyConsloeMessage);

    // void emptyScrollChnage(ScrollPositionChange change) {}
    // mixinContrl.setOnScrollPositionChange(emptyScrollChnage);

    _handelMap.clear();
  }
}
