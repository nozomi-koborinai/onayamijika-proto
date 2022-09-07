import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/onayami_card.dart';
import 'package:onayamijika/presentation/components/paint_tools/seal_header_area.dart';
import 'package:onayamijika/presentation/components/paint_tools/seal_paint_area.dart';
import 'package:onayamijika/presentation/components/paint_tools/seal_footer_area.dart';
import 'package:onayamijika/presentation/components/seal_making_sheet_model.dart';
import 'package:onayamijika/utils/app_values.dart';

/// シール作成シート
/// ※モーダル表示
class SealMakingSheet extends ConsumerWidget {
  final OnayamiCard targetCard;
  const SealMakingSheet({required this.targetCard, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SealMakingSheetViewModel vm =
        ref.watch(sealMakingSheetViewModelProvider(targetCard));
    final height = MediaQuery.of(context).size.height * 0.85;

    return Container(
        height: height,
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // シールヘッダーエリア
            SealHeaderArea(height: height * 0.1),
            // シール編集エリア
            SealPaintArea(height: height * 0.7),
            // シール編集ツールエリア
            SealFooterArea(height: height * 0.2)
          ],
        ));
  }
}
