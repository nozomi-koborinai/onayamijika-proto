import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onayamijika/presentation/components/onayami_card.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet_model.dart';
import 'package:onayamijika/presentation/views/onayamijika/onayami_cards_page_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

final container = ProviderContainer();

void main() {
  container.read(selectedOnayamiCardProvider.state).state = OnayamiCard(
      cardName: 'testcard',
      accountImageUrl: 'testurl',
      accountName: 'testname',
      distance: 'testkm',
      content: 'testcontent',
      cardColor: AppColors.brown);
  final SealMakingSheetViewModel vm =
      container.read(sealMakingSheetViewModelProvider);

  test('お悩みシール送るシートの初期化時点',
      () async => {expect(vm.targetCard.accountName, 'testname')});
}
