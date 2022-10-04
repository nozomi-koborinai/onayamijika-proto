import 'dart:async';
import 'dart:io';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:onayamijika/utils/app_values.dart';

/// 汎用的に使用可能なメソッド群
///  => 使用方法：FunctionUtils.instance.hogehoge
class FunctionUtils {
  /// singleTon
  FunctionUtils._();
  static final instance = FunctionUtils._();

  /// 端末の現在地（許可されていない場合は位置情報を取得できないのでnullを入れる）
  late Position? currentPostion;

  /// ランダムで生成するカード色のリスト
  final List<Color> _cardColors = [
    AppColors.skyGreen,
    AppColors.lightPink,
    AppColors.salmonPink,
    AppColors.grayPink,
    AppColors.brown,
    AppColors.intenseBlue,
    AppColors.lightGreen,
  ];

  /// お悩みカードに使用する色をランダムで生成する
  String getRandomColorForOnayamiCard() {
    final rand = math.Random();
    return ColorToHex(_cardColors[rand.nextInt(7)]).value.toString();
  }

  /// ウィジェットを画像化する
  Future<Uint8List?> widgetToImage({required globalKey}) async {
    final boundary =
        globalKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
    if (boundary == null) return null;
    final image = await boundary.toImage();
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    return byteData?.buffer.asUint8List();
  }

  /// 指定したファイルのファイル名を取得する
  String getFileName(File file) {
    return file.path.split("/").last;
  }

  /// 地図上の2つの位置(緯度経度)から距離(km)を求める
  /// 少数３位を四捨五入して少数第２位まで表示
  double distanceBetween({
    required double latitude1,
    required double longitude1,
    required double latitude2,
    required double longitude2,
  }) {
    toRadians(double degree) => degree * math.pi / 180;
    const double r = 6378137.0; // 地球の半径
    final double f1 = toRadians(latitude1);
    final double f2 = toRadians(latitude2);
    final double l1 = toRadians(longitude1);
    final double l2 = toRadians(longitude2);
    final num a = math.pow(math.sin((f2 - f1) / 2), 2);
    final double b =
        math.cos(f1) * math.cos(f2) * math.pow(math.sin((l2 - l1) / 2), 2);
    final double d = 2 * r * math.asin(math.sqrt(a + b));
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
    currentPostion = await Geolocator.getCurrentPosition();
    return currentPostion!;
  }
}
