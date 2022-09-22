import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';
import 'package:onayamijika/domain/models/onayami_card_view.dart';
import 'package:onayamijika/utils/app_values.dart';
import 'package:onayamijika/utils/function_utils.dart';

final onayamiCardDispViewModelProvider =
    Provider.family<OnayamiCardDispViewModel, OnayamiCard>((ref, card) =>
        OnayamiCardDispViewModel(
            ref: ref,
            accountRepository: ref.watch(accountRepositoryProvider),
            card: card));

/// お悩みカード(一覧表示用)ViewModel
class OnayamiCardDispViewModel {
  final ProviderRef ref;
  final IAccountRepository accountRepository;
  final OnayamiCard card;

  /// constructor
  OnayamiCardDispViewModel(
      {required this.ref, required this.accountRepository, required this.card});

  /// 表面の表示用オブジェクトを作成する
  Future<OnayamiCardView> createOnayamiCardView() async {
    final cardAccount = await accountRepository.fetchAccountFromUid(
        uid: card.cardDocument.createAccountUid);
    final distance = await calcDistance();
    return OnayamiCardView(
        accountImageUrl: cardAccount.accountImageUrl,
        accountName: cardAccount.accountName,
        distance: distance,
        cardTitle: card.cardDocument.cardTitle,
        cardContent: card.cardDocument.content,
        card: card,
        cardColor: AppColors.purple);
  }

  /// 裏面の表示用オブジェクトを作成する

  /// 距離を計算する
  Future<double> calcDistance() async {
    final myPosition = await Geolocator.getCurrentPosition();
    return FunctionUtils.instance.distanceBetween(
        latitude1: myPosition.latitude,
        longitude1: myPosition.longitude,
        latitude2: card.cardDocument.latitude,
        longitude2: card.cardDocument.longitude);
  }
}
