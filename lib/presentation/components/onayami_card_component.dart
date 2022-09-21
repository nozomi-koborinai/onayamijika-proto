import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onayamijika/domain/models/onayami_card_view.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';
import 'package:onayamijika/presentation/components/common_text_field.dart';
import 'package:onayamijika/presentation/components/onayami_card_disp_view_model.dart';
import 'package:onayamijika/presentation/components/onayami_card_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';
import 'package:onayamijika/utils/hex_color.dart';

/// お悩みカードウィジェット_一覧表示用
class OnayamiCardForDisp extends ConsumerWidget {
  final OnayamiCardDocument cardDocument;
  final Color cardColor = AppColors.skyGreen;

  OnayamiCardForDisp({required this.cardDocument, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final OnayamiCardDispViewModel vm =
        ref.watch(onayamiCardDispViewModelProvider(cardDocument));

    return FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL,
      front: createFrontCard(vm),
      back: createBackCard(),
    );
  }

  /// 表面のお悩みカードを生成
  Widget createFrontCard(OnayamiCardDispViewModel vm) {
    return FutureBuilder(
        future: vm.createOnayamiCardView(),
        builder:
            (BuildContext context, AsyncSnapshot<OnayamiCardView> snapshot) {
          if (!snapshot.hasData) return const OnayamiCardForDispLoading();
          final cardView = snapshot.data!;
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: cardView.cardColor, // Card自体の色
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 40.0),
            elevation: 10, // 影の離れ具合
            shadowColor: cardView.cardColor,
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
                          backgroundImage:
                              NetworkImage(cardView.accountImageUrl),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cardView.accountName,
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          Text('${cardView.distance} km',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 15))
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
                            Text(cardView.cardTitle,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            Text(cardView.cardContent,
                                style: TextStyle(color: AppColors.gray)),
                          ],
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
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
                    child: const Image(
                        image: NetworkImage(
                            'https://firebasestorage.googleapis.com/v0/b/onayamijika.appspot.com/o/users%2FUOWrnZEvRJWEuy5hoMYHGtn9OZM2%2F2022-09-22%2002:09:31.093160.png?alt=media&token=78ddb619-ffb4-407c-b546-4253ba795056')),
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
final createOnayamiCardDataProvider = Provider.family<OnayamiCardDocument,
        Position>(
    (ref, position) => OnayamiCardDocument(
        cardTitle: ref.watch(cardTitleControllerStateProvider.state).state.text,
        content: ref.watch(cardContentControllerStateProvider.state).state.text,
        latitude: position.latitude,
        longitude: position.longitude,
        createAccountUid: Authentication.instance.myAccount.accountUid));

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
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      CommonTextField(
                          labelText: 'お悩みカードタイトル',
                          controller: vm.cardTitleController),
                      const SizedBox(height: 17),
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

/// お悩みカードウィジェット_一覧表示読み込み用
class OnayamiCardForDispLoading extends StatefulWidget {
  const OnayamiCardForDispLoading({super.key});

  @override
  _OnayamiCardForDispLoadingState createState() =>
      _OnayamiCardForDispLoadingState();
}

/// お悩みカード_ローディングアニメーション用
class _OnayamiCardForDispLoadingState extends State<OnayamiCardForDispLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _backgroundColor;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1250),
      vsync: this,
    );
    _backgroundColor =
        ColorTween(begin: HexColor('E8E8E8'), end: HexColor('B5B5B5'))
            .animate(_controller);
    _controller.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _backgroundColor,
        builder: (context, child) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: _backgroundColor.value, // Card自体の色
            margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 40.0),
            elevation: 10, // 影の離れ具合
            shadowColor: _backgroundColor.value,
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
                          radius: 30,
                          foregroundColor: _backgroundColor.value,
                          backgroundColor: _backgroundColor.value,
                        ),
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
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
