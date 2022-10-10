import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';

final onayamiCardRepositoryProvider = Provider<IOnayamiCardRepository>(
  (_) => throw UnimplementedError(),
);

abstract class IOnayamiCardRepository {
  Future<void> addCard({required OnayamiCardDocument newCard});
  Future<List<OnayamiCard>> fetchMyCards();
}
