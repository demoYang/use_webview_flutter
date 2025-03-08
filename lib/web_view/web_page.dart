import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'web_view_mixin.dart';

class WebPage extends StatefulWidget {
  final String url;

  const WebPage({super.key, required this.url});

  @override
  State<WebPage> createState() => _WebPageState();

  static PageRoute route(String url) {
    return MaterialPageRoute(builder: (context) => WebPage(url: url));
  }
}

class _WebPageState extends State<WebPage> with WebViewBaseMixin, WebViewMixin {
  late WebViewController webCtrl;

  @override
  void initState() {
    super.initState();
    webCtrl = mixinInitWebController();
    addCommonJSBridgetHandle();
    webCtrl.loadRequest(Uri.parse(widget.url));

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pop(context);
    });
  }

  void onPageFinished(String url) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: webCtrl));
  }

  @override
  void dispose() {
    super.dispose();

    mixinDispose();
    webCtrl.loadRequest(Uri.parse('about:blank'));
    webCtrl.setNavigationDelegate(NavigationDelegate());
    webCtrl.removeJavaScriptChannel(jsbChannelName);
  }

  @override
  WebViewController get mixinContrl => webCtrl;
}
