import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';

final postRepositoryProvider = Provider<IOnayamiCardRepository>(
  (_) => throw UnimplementedError(),
);

abstract class IOnayamiCardRepository {
  Future<void> addCard({required OnayamiCard newCard});
}
