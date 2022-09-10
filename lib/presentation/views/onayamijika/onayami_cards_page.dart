import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';
import 'package:onayamijika/presentation/views/onayamijika/onayami_cards_page_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

class OnayamiCardsPage extends ConsumerWidget {
  const OnayamiCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(onayamiCardsPageViewModelProvider);

    return Scaffold(
      appBar: CommonAppBar(
        title: 'お悩みカード一覧',
        automaticallyImplyLeading: false,
        isAddCardsButton: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Swiper(
              itemBuilder: (context, index) {
                return vm.cards[index];
              },
              itemCount: vm.cards.length,
              viewportFraction: 0.8,
              scale: 0.9,
              onIndexChanged: (int value) => vm.onCardIndexChanged(value),
            ),
          ),
          Container(
            height: 40,
            margin: const EdgeInsets.only(bottom: 8),
            child: FloatingActionButton.extended(
                heroTag: '1',
                backgroundColor: AppColors.purple,
                icon: const Icon(Icons.add_reaction_outlined), //アイコンは無しでもOK
                label: const Text('お悩み解決シールを送る'),
                onPressed: () => vm.onPressed(context)),
          )
        ],
      ),
    );
  }
}
