import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

class OnayamiCard extends StatelessWidget {
  final String cardName;
  final String accountImageUrl;
  final String accountName;
  final String distance;
  final String content;
  final Color cardColor;

  const OnayamiCard(
      {required this.cardName,
      required this.accountImageUrl,
      required this.accountName,
      required this.distance,
      required this.content,
      required this.cardColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL,
      front: createFrontCard(),
      back: createBackCard(),
    );
  }

  /// 表面のお悩みカードを生成
  Card createFrontCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: cardColor, // Card自体の色
      margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 40.0),
      elevation: 10, // 影の離れ具合
      shadowColor: cardColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 4, right: 13, top: 4, bottom: 8),
                  child: CircleAvatar(
                    radius: 35,
                    foregroundColor: AppColors.gray,
                    backgroundColor: AppColors.white,
                    backgroundImage: NetworkImage(accountImageUrl),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(accountName,
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(distance,
                        style: TextStyle(color: AppColors.white, fontSize: 15))
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  // 枠線
                  border: Border.all(color: AppColors.white, width: 1),
                  // 角丸
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      Text(cardName,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      Text(content, style: TextStyle(color: AppColors.gray)),
                    ],
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// 裏面のお悩みカードを生成
  Card createBackCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: cardColor, // Card自体の色
      margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 40.0),
      elevation: 10, // 影の離れ具合
      shadowColor: cardColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('お悩み解決シール',
                style: TextStyle(
                    color: AppColors.gray, fontWeight: FontWeight.w200)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CircleAvatar(
                    foregroundColor: AppColors.gray,
                    backgroundColor: AppColors.white,
                    child: const Icon(Icons.umbrella, size: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CircleAvatar(
                    foregroundColor: AppColors.gray,
                    backgroundColor: AppColors.white,
                    child: const Icon(Icons.sunny, size: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CircleAvatar(
                    foregroundColor: AppColors.gray,
                    backgroundColor: AppColors.white,
                    child: const Icon(Icons.ac_unit, size: 30),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CircleAvatar(
                    foregroundColor: AppColors.gray,
                    backgroundColor: AppColors.white,
                    child: const Icon(Icons.music_note, size: 30),
                  ),
                ),
              ],
            ),
          ),
        ],
      ), // 影の色
    );
  }
}
