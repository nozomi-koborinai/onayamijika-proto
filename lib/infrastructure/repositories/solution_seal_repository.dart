import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_solution_seal_repository.dart';
import 'package:onayamijika/infrastructure/%20infrastructure_providers.dart';
import 'package:onayamijika/infrastructure/dtos/solution_seal_document.dart';

/// お悩み解決シールコレクション名のプロバイダ
final sealCollectionNameProvider = Provider((_) => ' solution_seals');

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
}
