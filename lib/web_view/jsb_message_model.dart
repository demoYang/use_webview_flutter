import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';

// 用于解析H5调用native的message
class JSBMessageModel {
  late final String method;

  late final Map<String, dynamic> args;

  // 用于给前端回调
  late final String callback;

  JSBMessageModel(String message) {
    var map = {};
    try {
      // 不加 try 会 crash
      map = json.decode(message) as Map<String, dynamic>? ?? {};
    } catch (_) {
      debugPrint('[jsb model parser error message : $message]');
    }
    method = map['method'] as String? ?? '';
    callback = map['callback'] as String? ?? '';
    args = map['args'] as Map<String, dynamic>? ?? <String, dynamic>{};
  }

  String get desp => 'method : $method, arsg : $args';
}

typedef HandelMessageCallback = FutureOr<dynamic> Function(
    JSBMessageModel model);

class JSBMessageModelHandel {
  final String domain;

  // 名称 与 JSBMessageModel 对应
  final String method;

  // 处理 message model
  final HandelMessageCallback handel;

  //自己处理前端回调
  final bool customHandel;

  const JSBMessageModelHandel(
      {required this.domain,
      required this.method,
      required this.handel,
      this.customHandel = false});

  JSBMessageModelHandel.base(this.method, this.handel,
      {this.customHandel = false})
      : domain = 'base';

  JSBMessageModelHandel.picker(this.method, this.handel,
      {this.customHandel = false})
      : domain = 'picker';

  JSBMessageModelHandel.bbs(this.method, this.handel,
      {this.customHandel = false})
      : domain = 'bbs';

  JSBMessageModelHandel.other(this.method, this.handel,
      {this.customHandel = false})
      : domain = 'other';

  String get key => '$domain#$method';

  JSBMessageModelHandel.empty(HandelMessageCallback emptyHandel)
      : method = '',
        domain = '',
        customHandel = false,
        handel = emptyHandel;
}
