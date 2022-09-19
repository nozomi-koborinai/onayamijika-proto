import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onayamijika/presentation/components/onayami_card_component.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet_model.dart';
import 'package:onayamijika/presentation/views/onayamijika/onayami_cards_page_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

final container = ProviderContainer();

void main() {
  container.read(selectedOnayamiCardProvider.state).state =
      OnayamiCardComponent(
          cardName: 'testcard',
          accountImageUrl: 'testurl',
          accountName: 'testname',
          distance: 'testkm',
          content: 'testcontent',
          cardColor: AppColors.brown);
  final OnayamiCardsPageViewModel cardVm =
      container.read(onayamiCardsPageViewModelProvider);
  final SealMakingSheetViewModel sealVm =
      container.read(sealMakingSheetViewModelProvider);

  test('お悩みシール送るシートの初期化時点',
      () async => {expect(sealVm.targetCard.accountName, 'testname')});

  test(
    'カード選択変更時',
    () => {
      cardVm.onCardIndexChanged(2),
      expect(container.read(selectedOnayamiCardProvider.state).state.content,
          '帰る？')
    },
  );
}
