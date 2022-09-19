import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// OnayamiCardViewModelのインスタンスを返却するプロバイダ
final onayamiCardViewModelProvider =
    Provider<OnayamiCardViewModel>((ref) => OnayamiCardViewModel(ref: ref));

/// カードタイトルテキストコントローラProvider
final cardTitleControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// カード内容テキストコントローラProvider
final cardContentControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// お悩みカード(新規作成用)ViewModel
class OnayamiCardViewModel {
  final ProviderRef ref;

  /// constructor
  OnayamiCardViewModel({required this.ref});

  // 各Providerのgetter/setter（viewとのバインド用)
  TextEditingController get cardTitleController =>
      ref.watch(cardTitleControllerStateProvider.state).state;
  TextEditingController get cardContentController =>
      ref.watch(cardContentControllerStateProvider.state).state;
}
