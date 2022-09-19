import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';
import 'package:onayamijika/presentation/components/common_text_field.dart';
import 'package:onayamijika/presentation/components/onayami_card_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

/// お悩みカードウィジェット_一覧表示用
class OnayamiCardForDisp extends StatelessWidget {
  final String cardName;
  final String accountImageUrl;
  final String accountName;
  final String distance;
  final String content;
  final Color cardColor;

  const OnayamiCardForDisp(
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

/// お悩みカードウィジェット_新規作成用の入力データからOnayamiCardデータを作成
final createOnayamiCardDataProvider = Provider.family<OnayamiCard, Position>(
    (ref, position) => OnayamiCard(
        cardTitle: ref.watch(cardTitleControllerStateProvider.state).state.text,
        content: ref.watch(cardContentControllerStateProvider.state).state.text,
        latitude: position.latitude,
        longitude: position.longitude));

/// お悩みカードウィジェット_新規作成用
class OnayamiCardForCreate extends ConsumerWidget {
  final String accountImageUrl;
  final String accountName;
  final Color cardColor;

  const OnayamiCardForCreate(
      {required this.accountImageUrl,
      required this.accountName,
      required this.cardColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnayamiCardViewModel vm = ref.watch(onayamiCardViewModelProvider);

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
                      CommonTextField(
                          labelText: 'お悩みカードタイトル',
                          controller: vm.cardTitleController),
                      CommonTextField(
                          labelText: 'お悩み内容',
                          controller: vm.cardContentController),
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
}
