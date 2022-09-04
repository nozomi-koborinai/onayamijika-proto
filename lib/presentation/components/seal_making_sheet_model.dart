import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/onayami_card.dart';

/// OnayamiCardsPageViewModelのインスタンスを返却するプロバイダ
final sealMakingSheetViewModelProvider =
    Provider.family<SealMakingSheetViewModel, OnayamiCard>(
        (ref, card) => SealMakingSheetViewModel(ref: ref, targetCard: card));

/// 送り先名前ラベル
final sendNameProvider = Provider<String>((_) => '');

/// 送り先お悩みタイトルラベル
final sendOnayamiTitleProvider = Provider<String>((_) => '');

class SealMakingSheetViewModel {
  /// constructor
  SealMakingSheetViewModel({required this.ref, required this.targetCard});

  final ProviderRef ref;
  final OnayamiCard targetCard;
}
