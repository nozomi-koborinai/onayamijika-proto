import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card.dart';

final onayamiCardRepositoryProvider = Provider<IOnayamiCardRepository>(
  (_) => throw UnimplementedError(),
);

abstract class IOnayamiCardRepository {
  Future<void> addCard({required OnayamiCard newCard});
}
