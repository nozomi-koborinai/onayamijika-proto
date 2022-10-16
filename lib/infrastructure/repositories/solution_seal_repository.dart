import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_solution_seal_repository.dart';
import 'package:onayamijika/domain/models/%20solution_seal.dart';
import 'package:onayamijika/infrastructure/%20infrastructure_providers.dart';
import 'package:onayamijika/infrastructure/dtos/solution_seal_document.dart';

/// お悩み解決シールコレクション名のプロバイダ
final sealCollectionNameProvider = Provider((_) => 'solution_seals');

/// お悩み解決シールコレクションReferenceのプロバイダ
final sealCollectionRefProvider =
    Provider<CollectionReference<Map<String, dynamic>>>((ref) => ref
        .watch(firebaseFirestoreProvider)
        .collection(ref.watch(sealCollectionNameProvider)));

/// SolutionSealRepositoryのインスタンスを保持するプロバイダ
final firebaseSolutionSealRepositoryProvider =
    Provider<ISolutionSealRepository>(
  (ref) => SolutionSealRepository(
    collectionRef: ref.watch(sealCollectionRefProvider),
  ),
);

/// シール一覧StreamProvider
final sealListStreamProvider =
    StreamProvider.family<List<SolutionSeal>, String>((ref, cardId) {
  return ref
      .watch(sealCollectionRefProvider)
      .where('card_id', isEqualTo: cardId)
      .orderBy('created_date_time', descending: true)
      .snapshots()
      .map((snapshot) {
    final list = snapshot.docs.map((doc) {
      return SolutionSeal(
          sealId: doc.id,
          sealDocument: SolutionSealDocument.fromJson(doc.data()));
    }).toList();
    return list;
  });
});

class SolutionSealRepository implements ISolutionSealRepository {
  final CollectionReference<Map<String, dynamic>> collectionRef;
  SolutionSealRepository({
    required this.collectionRef,
  });

  /// お悩み解決シール新規追加
  @override
  Future<bool> addSeal({required SolutionSealDocument newSeal}) async {
    try {
      await collectionRef.add(newSeal.toJson());
      return true;
    } on FirebaseException catch (e) {
      print(e.toString());
      return false;
    }
  }

  /// お悩みカードのドキュメントIDを元にそのカードに貼り付けられた複数のシールドキュメントを取得
  @override
  Future<List<SolutionSeal>> fetchSealsFromCardId(
      {required String cardId}) async {
    final snapshot = await collectionRef
        .where('card_id', isEqualTo: cardId)
        .orderBy('created_date_time', descending: true)
        .get();
    return snapshot.docs
        .map((doc) => SolutionSeal(
            sealId: doc.id,
            sealDocument: SolutionSealDocument.fromJson(doc.data())))
        .toList();
  }
}
