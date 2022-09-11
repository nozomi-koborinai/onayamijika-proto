import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

/// 汎用的に使用可能なメソッド群
///  => 使用方法：FunctionUtils.instance.hogehoge
class FunctionUtils {
  /// singleTon
  FunctionUtils._();
  static final instance = FunctionUtils._();

  /// ウィジェットを画像化する
  Future<Uint8List?> widgetToImage({required globalKey}) async {
    final boundary =
        globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return null;
    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }
}
