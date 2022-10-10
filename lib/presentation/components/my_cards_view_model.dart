import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_onayami_card_repository.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';

/// MyCardsViewModelのインスタンスを返却するプロバイダ
final myCardsPageViewModelProvider = Provider<MyCardsViewModel>((ref) =>
    MyCardsViewModel(
        ref: ref, repository: ref.watch(onayamiCardRepositoryProvider)));

class MyCardsViewModel {
  final ProviderRef ref;
  final IOnayamiCardRepository repository;

  /// constructor
  MyCardsViewModel({required this.ref, required this.repository});

  Future<List<OnayamiCard>> fetchMyCards() async {
    return await repository.fetchMyCards();
  }
}
