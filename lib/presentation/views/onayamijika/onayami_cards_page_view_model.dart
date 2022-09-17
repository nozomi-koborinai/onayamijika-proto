import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/onayami_card.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet.dart';
import 'package:onayamijika/presentation/views/onayamijika/screen_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

/// OnayamiCardsPageViewModelのインスタンスを返却するプロバイダ
final onayamiCardsPageViewModelProvider = Provider<OnayamiCardsPageViewModel>(
    (ref) => OnayamiCardsPageViewModel(
        ref: ref, screenViewModel: ref.watch(screenViewModelProvider)));

/// 選択中お悩みカードプロバイダ
final selectedOnayamiCardProvider = StateProvider<OnayamiCard>((_) =>
    OnayamiCard(
        cardName: '',
        accountImageUrl: '',
        accountName: '',
        distance: '',
        content: '',
        cardColor: AppColors.brown));

class OnayamiCardsPageViewModel {
  final ProviderRef ref;
  final ScreenViewModel screenViewModel;

  /// 後でStreamProviderに置き換える
  var cards = [
    OnayamiCard(
        cardName: 'わんこそば100杯いけません',
        accountImageUrl: 'https://avatars.githubusercontent.com/u/39579511?v=4',
        accountName: 'cobo',
        distance: '6km',
        content: 'わんこそば100杯いく食べ方が知りたいです',
        cardColor: AppColors.intenseBlue),
    OnayamiCard(
        cardName: '仕事終わらん',
        accountImageUrl: 'https://pro-foto.jp/img/category_tn_35.jpg',
        accountName: 'tes',
        distance: '16km',
        content: 'どうやって終わるのかな？',
        cardColor: AppColors.salmonPink),
    OnayamiCard(
        cardName: '仕事終わらん',
        accountImageUrl:
            'https://www.pakutaso.com/shared/img/thumb/KUMA1892073_TP_V.jpg',
        accountName: 'sto',
        distance: '800km',
        content: '帰る？',
        cardColor: AppColors.skyGreen)
  ];

  /// constructor
  OnayamiCardsPageViewModel({required this.ref, required this.screenViewModel});

  /// 選択中お悩みカード変更時
  void onCardIndexChanged(int index) {
    ref.watch(selectedOnayamiCardProvider.state).state = cards[index];
  }

  /// お悩み解決シールボタン押下時
  void onPressed(BuildContext context) async {
    await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      enableDrag: false,
      builder: (BuildContext context) {
        return const SealMakingSheet();
      },
    );
  }
}
