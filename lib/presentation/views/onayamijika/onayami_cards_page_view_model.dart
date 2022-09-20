import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';
import 'package:onayamijika/infrastructure/repositories/onayami_card_repository.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet.dart';
import 'package:onayamijika/presentation/views/onayamijika/screen_view_model.dart';

/// OnayamiCardsPageViewModelのインスタンスを返却するプロバイダ
final onayamiCardsPageViewModelProvider = Provider<OnayamiCardsPageViewModel>(
    (ref) => OnayamiCardsPageViewModel(
        ref: ref, screenViewModel: ref.watch(screenViewModelProvider)));

/// 選択中お悩みカードプロバイダ
final selectedOnayamiCardDocumentProvider = StateProvider<OnayamiCardDocument>(
    (_) => const OnayamiCardDocument(
        cardTitle: '',
        content: '',
        createAccountUid: '',
        latitude: 0.0,
        longitude: 0.0));

class OnayamiCardsPageViewModel {
  final ProviderRef ref;
  final ScreenViewModel screenViewModel;

  /// constructor
  OnayamiCardsPageViewModel({required this.ref, required this.screenViewModel});

  // viewとのバインド用
  /// カード一覧
  get onayamiCards => ref.watch(onayamiCardListStreamProvider);

  /// 選択中お悩みカード変更時
  void onCardIndexChanged(OnayamiCardDocument cardDocument) {
    ref.watch(selectedOnayamiCardDocumentProvider.state).state = cardDocument;
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
