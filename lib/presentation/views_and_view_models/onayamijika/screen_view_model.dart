import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/presentation_providers.dart';

/// ScreenViewModelのインスタンスを返却するプロバイダ
final screenViewModelProvider =
    Provider<ScreenViewModel>((ref) => ScreenViewModel(ref: ref));

class ScreenViewModel {
  final ProviderRef ref;

  /// constructor
  ScreenViewModel({required this.ref});

  // 各Providerのgetter/setter（viewとのバインド用)
  int get selectedIndex => ref.watch(selectedIndexProvider.state).state;
  set selectedIndex(int index) =>
      ref.watch(selectedIndexProvider.state).state = index;

  /// ボトムバー要素タップ時
  void onTap(int index) {
    selectedIndex = index;
  }
}
