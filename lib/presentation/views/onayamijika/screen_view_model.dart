import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/views/onayamijika/card_making_page.dart';

/// ScreenViewModelのインスタンスを返却するプロバイダ
final screenViewModelProvider =
    Provider<ScreenViewModel>((ref) => ScreenViewModel(ref: ref));

/// 選択Index
final selectedIndexProvider = StateProvider<int>((_) => 0);

class ScreenViewModel {
  final ProviderRef ref;

  /// constructor
  ScreenViewModel({required this.ref});

  // 各Providerのgetter/setter（viewとのバインド用)
  int get selectedIndex => ref.watch(selectedIndexProvider.state).state;
  set selectedIndex(int index) =>
      ref.watch(selectedIndexProvider.state).state = index;

  /// ボトムバー要素押下時時
  void onTap(int index) {
    selectedIndex = index;
  }

  /// カード作成ボタン押下時
  Future<void> onPressed(BuildContext context) async {
    await Navigator.push(context,
        MaterialPageRoute(builder: (content) => const CardMakingPage()));
  }
}
