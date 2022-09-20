import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';

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

  /// 指定したdouble型のデ

  /// 地図上の2つの位置(緯度経度)から距離(km)を求める
  /// 少数３位を四捨五入して少数第２位まで表示
  double distanceBetween({
    required double latitude1,
    required double longitude1,
    required double latitude2,
    required double longitude2,
  }) {
    toRadians(double degree) => degree * pi / 180;
    const double r = 6378137.0; // 地球の半径
    final double f1 = toRadians(latitude1);
    final double f2 = toRadians(latitude2);
    final double l1 = toRadians(longitude1);
    final double l2 = toRadians(longitude2);
    final num a = pow(sin((f2 - f1) / 2), 2);
    final double b = cos(f1) * cos(f2) * pow(sin((l2 - l1) / 2), 2);
    final double d = 2 * r * asin(sqrt(a + b));
    return double.parse(d.toStringAsFixed(2));
  }

  /// デバイスの現在位置を決定する。
  /// 位置情報サービスが有効でない場合、または許可されていない場合。
  /// エラーを返す
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // 位置情報サービスが有効かどうかをテストします。
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // 位置情報サービスが有効でない場合、続行できません。
      // 位置情報にアクセスし、ユーザーに対して
      // 位置情報サービスを有効にするようアプリに要請する。
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // ユーザーに位置情報を許可してもらうよう促す
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // 拒否された場合エラーを返す
        return Future.error('Location permissions are denied');
      }
    }

    // 永久に拒否されている場合のエラーを返す
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // ここまでたどり着くと、位置情報に対しての権限が許可されているということなので
    // デバイスの位置情報を返す。
    return await Geolocator.getCurrentPosition();
  }
}
