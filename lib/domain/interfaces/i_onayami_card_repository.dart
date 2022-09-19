import 'package:onayamijika/domain/models/onayami_card.dart';

abstract class IOyanamiCardRepository {
  Future<void> addCard(OnayamiCard newCard);
}
