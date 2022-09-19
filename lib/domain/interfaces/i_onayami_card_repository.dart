import 'package:onayamijika/domain/models/onayami_card.dart';

abstract class IOnayamiCardRepository {
  Future<void> addCard(OnayamiCard newCard);
}
