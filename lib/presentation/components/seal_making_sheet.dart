import 'package:flutter/material.dart';
import 'package:onayamijika/presentation/components/paint_tools/seal_header_area.dart';
import 'package:onayamijika/presentation/components/paint_tools/seal_paint_area.dart';
import 'package:onayamijika/presentation/components/paint_tools/seal_footer_area.dart';
import 'package:onayamijika/utils/app_values.dart';

/// シール作成シート
/// ※モーダル表示
class SealMakingSheet extends StatelessWidget {
  const SealMakingSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.85;

    return Container(
        height: height,
        decoration: BoxDecoration(
          color: AppColors.lightGray.withOpacity(0.5),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(70),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // シールヘッダーエリア
            SealHeaderArea(height: height * 0.1),
            // シール編集エリア
            SealPaintArea(height: height * 0.78),
            // シールフッターエリア
            SealFooterArea(height: height * 0.12)
          ],
        ));
  }
}
