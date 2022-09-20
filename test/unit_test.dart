import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onayamijika/infrastructure/dtos/onayami_card_document.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet_model.dart';
import 'package:onayamijika/presentation/views/onayamijika/onayami_cards_page_view_model.dart';
import 'package:onayamijika/utils/function_utils.dart';

final container = ProviderContainer();

void main() {
  container.read(selectedOnayamiCardDocumentProvider.state).state =
      const OnayamiCardDocument(
          cardTitle: '',
          content: '',
          latitude: 0.0,
          longitude: 0.0,
          createAccountUid: '');
  final OnayamiCardsPageViewModel cardVm =
      container.read(onayamiCardsPageViewModelProvider);
  final SealMakingSheetViewModel sealVm =
      container.read(sealMakingSheetViewModelProvider);

  test('メルボルンからストックホルムへの距離', () async {
    expect(
        FunctionUtils.instance.distanceBetween(
            latitude1: -37.735110047563815,
            longitude1: 144.96003493198253,
            latitude2: 59.337692316059865,
            longitude2: 18.07156327513596),
        15609534.650715413);
  });

  test('お悩みシール送るシートの初期化時点',
      () async => {expect(sealVm.targetCard.createAccountUid, 'testname')});

  test(
    'カード選択変更時',
    () => {
      expect(
          container
              .read(selectedOnayamiCardDocumentProvider.state)
              .state
              .content,
          '帰る？')
    },
  );
}
