import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/domain/interfaces/i_solution_seal_repository.dart';
import 'package:onayamijika/domain/models/%20solution_seal_view.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';
import 'package:onayamijika/domain/models/onayami_card_view.dart';
import 'package:onayamijika/utils/function_utils.dart';

final onayamiCardDispViewModelProvider =
    Provider.family<OnayamiCardDispViewModel, OnayamiCard>((ref, card) =>
        OnayamiCardDispViewModel(
            ref: ref,
            accountRepository: ref.watch(accountRepositoryProvider),
            sealRepository: ref.watch(solutionSealRepositoryProvider),
            card: card));

/// お悩みカード(一覧表示用)ViewModel
class OnayamiCardDispViewModel {
  final ProviderRef ref;
  final IAccountRepository accountRepository;
  final ISolutionSealRepository sealRepository;
  final OnayamiCard card;

  /// constructor
  OnayamiCardDispViewModel(
      {required this.ref,
      required this.accountRepository,
      required this.sealRepository,
      required this.card});

  /// 表面の表示用オブジェクトを作成する
  Future<OnayamiCardView> createOnayamiCardView() async {
    // カード作成者を取得
    final cardAccount = await accountRepository.fetchAccountFromUid(
        uid: card.cardDocument.createAccountUid);
    final utils = FunctionUtils.instance;

    // 距離計算
    // 端末に位置情報を許可していない場合は、位置情報が取得できていないのでその場合は0.0を表示するようにしておく
    double distance = 0.0;
    if (utils.currentPostion != null) {
      distance = utils.distanceBetween(
          latitude1: utils.currentPostion!.latitude,
          longitude1: utils.currentPostion!.longitude,
          latitude2: card.cardDocument.latitude,
          longitude2: card.cardDocument.longitude);
    }

    return OnayamiCardView(
        accountImageUrl: cardAccount.accountImageUrl,
        accountName: cardAccount.accountName,
        distance: distance,
        cardTitle: card.cardDocument.cardTitle,
        cardContent: card.cardDocument.content,
        card: card,
        cardColor: Color(int.parse(card.cardDocument.colorCode)));
  }

  /// 裏面の表示用オブジェクトを作成する
  Future<SolutionSealView> createSealsView() async {
    final seals =
        await sealRepository.fetchSealsFromCardId(cardId: card.cardId);
    return SolutionSealView(seals: seals);
  }
}
