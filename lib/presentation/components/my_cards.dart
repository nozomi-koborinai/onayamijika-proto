import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/models/onayami_card.dart';
import 'package:onayamijika/presentation/components/my_cards_view_model.dart';
import 'package:onayamijika/presentation/components/onayami_card_component.dart';

class MyCards extends ConsumerWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(myCardsPageViewModelProvider);

    return FutureBuilder(
      future: vm.fetchMyCards(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (!snapshot.hasData) return const OnayamiCardForDispLoading();
        final List<OnayamiCard> cards = snapshot.data!;
        return ListView.builder(
          itemCount: cards.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
                height: 30,
                width: 30,
                child: OnayamiCardForDisp(card: cards[index]));
          },
        );
      },
    );
  }
}
