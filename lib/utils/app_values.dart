import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

/// アプリ内共通で使用する色
class AppColors {
  static final Color purple = HexColor('#cabbe9');
  static final Color grey = HexColor('#696969');
  static final Color lightGrey = HexColor('#f5f5f5');
  static final Color white = HexColor('#fdfdfd');
  static final Color intensePink = HexColor('#f469a9');
  static final Color intensePurple = HexColor('#ba53de');
  static final Color skyGreen = HexColor('#BAD9C8');
  static final Color lightGreen = HexColor('#90DED0');
  static final Color lightPink = HexColor('#ffcef3');
  static final Color salmonPink = HexColor('#FA9CA9');
  static final Color grayPink = HexColor('#B99AA3');
  static final Color brown = HexColor('#F8E0D6');
  static final Color lightYellow = HexColor('#E3C75F');
  static final Color intenseBlue = HexColor('#B3D3E8');
}

/// アプリ内共通で使用するメッセージ
class AppMessages {
  static const String ok = 'OK';
  static const String error = 'エラー';
  static const String yes = 'はい';
  static const String no = 'いいえ';
}
