import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/common_widgets/common_app_bar.dart';
import 'package:onayamijika/presentation/common_widgets/onayami_card.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/onayami_cards_page_view_model.dart';

class OnayamiCardsPage extends ConsumerWidget {
  const OnayamiCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(onayamiCardsPageViewModelProvider);
    return Scaffold(
      appBar: CommonAppBar(title: 'お悩みカード一覧'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OnayamiCard(
                icon: Icons.android,
                distance: '4km',
                cardName: 'テストくん',
                content: '周りの目線が怖いです😭\n助けて下さい',
                heroTag: '1',
                onPressed: () => vm.onPressed(context)),
            OnayamiCard(
                icon: Icons.headset_mic,
                distance: '15km',
                cardName: '過敏',
                content: '集中できないことが多いです。\nどうすればいい？',
                heroTag: '2',
                onPressed: () => vm.onPressed(context)),
            OnayamiCard(
                icon: Icons.account_box_outlined,
                distance: '21km',
                cardName: 'てすとちゃん',
                content: '足の怪我で週一回の買い物ができません。ものを持ってくれる方いませんか。',
                heroTag: '3',
                onPressed: () => vm.onPressed(context)),
          ],
        ),
      ),
    );
  }
}
