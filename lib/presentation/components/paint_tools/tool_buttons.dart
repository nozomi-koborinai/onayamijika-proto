import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/states/seal_paint_state.dart';
import 'package:onayamijika/utils/app_values.dart';

class PaintEditButton extends ConsumerWidget {
  final IconData iconData;
  final Function onPressed;
  const PaintEditButton(
      {required this.iconData, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sealPaintStateNotifierProvider);

    return ElevatedButton(
      onPressed: () => onPressed.call(),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: iconData == Icons.delete
            ? AppColors.intensePink
            : iconData == Icons.undo
                ? state.paintList.isNotEmpty
                    ? AppColors.purple
                    : Colors.grey[200]
                : iconData == Icons.redo
                    ? state.undoList.isNotEmpty
                        ? AppColors.purple
                        : Colors.grey[200]
                    : AppColors.intenseBlue,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
      ),
      child: Icon(iconData, size: 27),
    );
  }
}
