import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/models/%20solution_seal.dart';
import 'package:onayamijika/infrastructure/dtos/solution_seal_document.dart';

final solutionSealRepositoryProvider = Provider<ISolutionSealRepository>(
  (_) => throw UnimplementedError(),
);

abstract class ISolutionSealRepository {
  /// お悩み解決シール新規追加
  Future<bool> addSeal({required SolutionSealDocument newSeal});

  /// お悩みカードのドキュメントIDを元にそのカードに貼り付けられた複数のシールドキュメントを取得
  Future<List<SolutionSeal>> fetchSealsFromCardId({required String cardId});
}
