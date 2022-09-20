import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_onayami_card_repository.dart';
import 'package:onayamijika/infrastructure/%20infrastructure_providers.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';

/// お悩みカードコレクション名のプロバイダ
final onayamiCardsCollectionNameProvider = Provider((_) => 'onayami_cards');

/// お悩みカードコレクションReferenceのプロバイダ
final onayamiCardCollectionRefProvider =
    Provider<CollectionReference<Map<String, dynamic>>>((ref) => ref
        .watch(firebaseFirestoreProvider)
        .collection(ref.watch(onayamiCardsCollectionNameProvider)));

/// PostRepositoryのインスタンスを保持するプロバイダ
final firebaseOnayamiCardRepositoryProvider = Provider<IOnayamiCardRepository>(
  (ref) => OnayamiCardRepository(
    // OnayamiCardRepositoryインスタンス生成時、お悩みカードコレクションをDI
    collectionRef: ref.watch(onayamiCardCollectionRefProvider),
  ),
);

/// お悩みカード一覧StreamProvider
final StreamProvider<List<OnayamiCardDocument>> onayamiCardListStreamProvider =
    StreamProvider<List<OnayamiCardDocument>>((ref) {
  return ref
      .watch(onayamiCardCollectionRefProvider)
      .snapshots()
      .map((snapshot) {
    final list = snapshot.docs.map((doc) {
      return OnayamiCardDocument.fromJson(doc.data());
    }).toList();
    return list;
  });
});

class OnayamiCardRepository implements IOnayamiCardRepository {
  OnayamiCardRepository({
    required this.collectionRef,
  });

  final CollectionReference<Map<String, dynamic>> collectionRef;

  @override
  Future<void> addCard({required OnayamiCardDocument newCard}) async {
    try {
      await collectionRef.add(newCard.toJson());
    } on FirebaseException catch (e) {
      print(e.toString());
    }
  }
}
