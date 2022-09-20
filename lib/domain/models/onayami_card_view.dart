import 'package:flutter/material.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';

/// お悩みカード一覧を表示するために必要な情報を一つにまとめた表示用モデル
class OnayamiCardView {
  /// アカウント画像URL
  String accountImageUrl;

  /// アカウント名
  String accountName;

  /// 距離
  double distance;

  /// お悩みカードタイトル
  String cardTitle;

  /// お悩みカード内容
  String cardContent;

  /// カードの色
  Color cardColor;

  /// 表示対象になっているカードのデータ元
  OnayamiCardDocument cardDocument;

  /// コンストラクタ
  OnayamiCardView(
      {required this.accountImageUrl,
      required this.accountName,
      required this.distance,
      required this.cardTitle,
      required this.cardContent,
      required this.cardDocument,
      required this.cardColor});
}
