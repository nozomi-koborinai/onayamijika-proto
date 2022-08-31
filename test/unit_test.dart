import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onayamijika/presentation/components/onayami_card.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet_model.dart';
import 'package:onayamijika/utils/app_values.dart';

final container = ProviderContainer();

void main() {
  final SealMakingSheetViewModel vm =
      container.read(sealMakingSheetViewModelProvider(OnayamiCard(
    distance: '8km',
    content: 'ただのテスト',
    cardName: 'わんこそばの食べ方',
    cardColor: AppColors.salmonPink,
    accountName: 'coboさん',
    accountImageUrl: '',
  )));

  test('お悩みシール送るシートの初期化時点',
      () async => {expect(vm.targetCard.accountName, 'coboさん')});
}
