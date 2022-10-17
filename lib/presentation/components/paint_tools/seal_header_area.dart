import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_button.dart';
import 'package:onayamijika/presentation/components/paint_tools/tool_buttons.dart';
import 'package:onayamijika/presentation/states/seal_paint_state.dart';
import 'package:onayamijika/utils/app_values.dart';

/// お悩みシールヘッダーエリア
class SealHeaderArea extends ConsumerWidget {
  final double height;
  const SealHeaderArea({required this.height, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(sealPaintStateNotifierProvider.notifier);

    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Opacity(
                opacity: 0.8,
                child: CommonCircleButton(
                    iconData: Icons.arrow_back_ios_outlined,
                    onPressed: () => Navigator.pop(context),
                    backgroundColor: AppColors.grey,
                    foregroundColor: AppColors.white,
                    size: 20),
              ),
            ),
            const Expanded(child: SizedBox()),
            PaintEditButton(
                iconData: Icons.abc_outlined,
                onPressed: () => showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                            title: const Text('TODO'),
                            content: const Text('テキスト入力'),
                            actions: [
                              ElevatedButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              )
                            ]))),
            PaintEditButton(iconData: Icons.undo, onPressed: controller.undo),
            PaintEditButton(iconData: Icons.redo, onPressed: controller.redo),
            PaintEditButton(
                iconData: Icons.delete, onPressed: controller.clear),
          ],
        ),
      ),
    );
  }
}
