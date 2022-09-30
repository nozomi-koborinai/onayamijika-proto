import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:onayamijika/utils/function_utils.dart';

final container = ProviderContainer();

void main() {
  test('メルボルンからストックホルムへの距離', () async {
    expect(
        FunctionUtils.instance.distanceBetween(
            latitude1: -37.735110047563815,
            longitude1: 144.96003493198253,
            latitude2: 59.337692316059865,
            longitude2: 18.07156327513596),
        15609534.650715413);
  });

  test('色コードが返ってくるか', () {
    expect(FunctionUtils.instance.getRandomColorForOnayamiCard(), '');
  });
}
