import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:onayamijika/utils/hex_color.dart';

/// アプリ内共通で使用する色
class AppColors {
  /// singleTon
  AppColors._();
  static final instance = AppColors._();

  // 淡い優しい色
  static final Color purple = HexColor('#cabbe9');
  static final Color gray = HexColor('#696969');
  static final Color lightGray = HexColor('#f5f5f5');
  static final Color white = HexColor('#fdfdfd');

  // 強調色
  static final Color intensePink = HexColor('#f469a9');
  static final Color intensePurple = HexColor('#ba53de');

  // カードに使う色
  static final Color skyGreen = HexColor('#BAD9C8');
  static final Color lightGreen = HexColor('#90DED0');
  static final Color lightPink = HexColor('#ffcef3');
  static final Color salmonPink = HexColor('#FA9CA9');
  static final Color grayPink = HexColor('#B99AA3');
  static final Color brown = HexColor('#F8E0D6');
  static final Color lightYellow = HexColor('#E3C75F');
  static final Color intenseBlue = HexColor('#B3D3E8');

  static final List<Color> colorsForOnayamiCard = [
    skyGreen,
    lightPink,
    salmonPink,
    grayPink,
    brown,
    intenseBlue,
    lightGreen,
  ];
  Color getRandomColorForOnayamiCard() {
    final rand = math.Random();
    return colorsForOnayamiCard[rand.nextInt(7)];
  }
}
