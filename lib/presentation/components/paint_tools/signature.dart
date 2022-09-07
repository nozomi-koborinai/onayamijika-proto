import 'package:flutter/material.dart';
import 'package:onayamijika/presentation/states/seal_paint_state.dart';

class Signature extends CustomPainter {
  Signature(this.state, this.context);

  final SealPaintState state;
  final BuildContext context;

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWigth = 7.0;

    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = strokeWigth;

    for (final points in state.paintList) {
      // 一番最初にタップした地点に点を打つ
      // そうしないとタップして離しただけの時に描画されない
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(
              center: points[0], width: strokeWigth, height: strokeWigth),
          const Radius.circular(strokeWigth),
        ),
        paint,
      );
      // ひとかたまりの線の描画
      for (var i = 0; i < points.length - 1; i++) {
        canvas.drawLine(points[i], points[i + 1], paint);
      }
    }
  }

  // paintListが変更されている時のみリビルド
  @override
  bool shouldRepaint(Signature oldDelegate) =>
      oldDelegate.state.paintList != state.paintList;
}
