import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/domain/models/onayami_card_view.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';
import 'package:onayamijika/utils/app_values.dart';
import 'package:onayamijika/utils/function_utils.dart';

final onayamiCardDispViewModelProvider =
    Provider.family<OnayamiCardDispViewModel, OnayamiCardDocument>(
        (ref, cardDocument) => OnayamiCardDispViewModel(
            ref: ref,
            accountRepository: ref.watch(accountRepositoryProvider),
            cardDocument: cardDocument));

/// お悩みカード(一覧表示用)ViewModel
class OnayamiCardDispViewModel {
  final ProviderRef ref;
  final IAccountRepository accountRepository;
  final OnayamiCardDocument cardDocument;

  /// constructor
  OnayamiCardDispViewModel(
      {required this.ref,
      required this.accountRepository,
      required this.cardDocument});

  /// 表示用オブジェクトを作成する
  Future<OnayamiCardView> createOnayamiCardView() async {
    final cardAccount = await accountRepository.fetchAccountFromUid(
        uid: cardDocument.createAccountUid);
    final distance = await calcDistance();
    return OnayamiCardView(
        accountImageUrl: cardAccount.accountImageUrl,
        accountName: cardAccount.accountName,
        distance: distance,
        cardTitle: cardDocument.cardTitle,
        cardContent: cardDocument.content,
        cardDocument: cardDocument,
        cardColor: AppColors.purple);
  }

  /// 距離を計算する
  Future<double> calcDistance() async {
    final myPosition = await Geolocator.getCurrentPosition();
    return FunctionUtils.instance.distanceBetween(
        latitude1: myPosition.latitude,
        longitude1: myPosition.longitude,
        latitude2: cardDocument.latitude,
        longitude2: cardDocument.longitude);
  }
}
