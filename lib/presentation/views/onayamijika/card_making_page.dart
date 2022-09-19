import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';
import 'package:onayamijika/presentation/components/common_button.dart';
import 'package:onayamijika/presentation/components/onayami_card_component.dart';
import 'package:onayamijika/presentation/views/onayamijika/card_making_page_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

class CardMakingPage extends ConsumerWidget {
  const CardMakingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CardMakingPageViewModel vm =
        ref.watch(cardMakingPageViewModelProvider);

    return Scaffold(
      appBar: CommonAppBar(title: 'お悩みカード作成'),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, left: 30.0, right: 30.0),
        child: Column(
          children: [
            Expanded(
              child: OnayamiCardForCreate(
                  accountImageUrl:
                      'https://blogger.googleusercontent.com/img/a/AVvXsEgM85LEvtgJrUmGx95tmMptVQWhITwGOun2FEdThRoHM1iA2IV7J9KA94UtTJco4GVIvitht8kY-nc9U6SBQ6oLlsGCLSlr2S0dv9m04sUFE_suAa77Z8V-HxOFVxSsPMEqRgGGlC0ilOpb-a_tAjkvTr_ux8GfLjdCFWkj8HVQ-kGVukNz9WfrQ9_s1g=s400',
                  accountName: 'cb',
                  cardColor: AppColors.skyGreen),
            ),
            SizedBox(
                height: 40,
                child: CommonOnayamiSealButton(
                    caption: 'お悩みカード作成！',
                    color: AppColors.purple,
                    iconData: Icons.add_reaction_outlined,
                    onPressed: () => vm.onPressed()))
          ],
        ),
      ),
    );
  }
}
