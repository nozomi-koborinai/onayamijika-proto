import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/onayami_card.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet_model.dart';
import 'package:onayamijika/utils/app_values.dart';

class SealMakingSheet extends ConsumerWidget {
  final OnayamiCard targetCard;
  const SealMakingSheet({required this.targetCard, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SealMakingSheetViewModel vm =
        ref.watch(sealMakingSheetViewModelProvider(targetCard));

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
        children: [
          Text('シールを送る相手：${vm.targetCard.accountName}'),
          Text('シールを送る相手との距離：${vm.targetCard.distance}'),
          Text('シールを送るカードのタイトル：${vm.targetCard.cardName}'),
        ],
      ),
    );
  }
}
