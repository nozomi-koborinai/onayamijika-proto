import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/signature.dart';
import 'package:onayamijika/presentation/states/seal_paint_state.dart';

/// お悩みシールの描画エリア
class SealPaintArea extends ConsumerWidget {
  final double height;
  const SealPaintArea({required this.height, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sealPaintStateNotifierProvider);
    final controller = ref.watch(sealPaintStateNotifierProvider.notifier);

    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onPanStart: (details) => controller.addPaint(details.localPosition),
        onPanUpdate: (details) {
          controller.updatePaint(_getPosition(height, details.localPosition));
        },
        onPanEnd: (_) => controller.endPaint(),
        child: CustomPaint(painter: Signature(state, context)),
      ),
    );
  }
}

/// ポジションの取得
Offset _getPosition(double length, Offset localPosition) {
  double dx;
  double dy;
  if (localPosition.dx < 0) {
    dx = 0;
  } else if (localPosition.dx > length) {
    dx = length;
  } else {
    dx = localPosition.dx;
  }
  if (localPosition.dy < 0) {
    dy = 0;
  } else if (localPosition.dy > length) {
    dy = length;
  } else {
    dy = localPosition.dy;
  }
  return Offset(dx, dy);
}
