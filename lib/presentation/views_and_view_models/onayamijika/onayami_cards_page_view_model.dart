import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/screen_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

/// OnayamiCardsPageViewModelのインスタンスを返却するプロバイダ
final onayamiCardsPageViewModelProvider = Provider<OnayamiCardsPageViewModel>(
    (ref) => OnayamiCardsPageViewModel(
        ref: ref, screenViewModel: ref.watch(screenViewModelProvider)));

class OnayamiCardsPageViewModel {
  final ProviderRef ref;
  final ScreenViewModel screenViewModel;

  /// constructor
  OnayamiCardsPageViewModel({required this.ref, required this.screenViewModel});

  /// お悩み解決シールボタン押下時
  void onPressed(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 600,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(70),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 100,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('お悩み解決シール作成シート'),
            ],
          ),
        );
      },
    );
  }
}
