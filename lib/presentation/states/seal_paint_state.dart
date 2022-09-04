import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'seal_paint_state.freezed.dart';

/// お悩み解決シールの描画状態を管理するクラス
@freezed
abstract class SealPaintState with _$SealPaintState {
  const factory SealPaintState({
    @Default(<List<Offset>>[]) List<List<Offset>> paintList,
    @Default(<List<Offset>>[]) List<List<Offset>> undoList,
    @Default(false) bool isDrag,
  }) = _SealPaintState;
}

/// シール描画を管理するためのコントローラのプロバイダ
final sealPaintStateNotifierProvider =
    StateNotifierProvider.autoDispose<SealPaintController, SealPaintState>(
        (_) => SealPaintController());

class SealPaintController extends StateNotifier<SealPaintState> {
  SealPaintController() : super(const SealPaintState());

  bool get canUndo => state.paintList.isNotEmpty;
  bool get canRedo => state.undoList.isNotEmpty;

  void undo() {
    // 描画中か、undoできなかったら何もしない
    if (state.isDrag || !canUndo) {
      return;
    }
    // paintListの最後を取って、undoListに追加する
    final last = state.paintList.last;
    state = state.copyWith(
      undoList: List.of(state.undoList)..add(last),
      paintList: List.of(state.paintList)..removeLast(),
    );
  }

  void redo() {
    // 描画中か、redoできなかったら何もしない
    if (state.isDrag || !canRedo) {
      return;
    }
    // undoListの最後を取って、paintListに追加する
    final last = state.undoList.last;
    state = state.copyWith(
      undoList: List.of(state.undoList)..removeLast(),
      paintList: List.of(state.paintList)..add(last),
    );
  }

  void clear() {
    // 全ての要素を空にするだけ
    if (!state.isDrag) {
      state = state.copyWith(paintList: [], undoList: []);
    }
  }

  void addPaint(Offset startPoint) {
    if (!state.isDrag) {
      state = state.copyWith(
        isDrag: true, // 描画中に変更
        paintList: List.of(state.paintList)..add([startPoint]), // 新たに開始地点を追加
        undoList: const [], // 一つ進めるものがないはずなので空に(redoできないように)
      );
    }
  }

  void updatePaint(Offset nextPoint) {
    // 最後の要素に進んだポジションを追加
    if (state.isDrag) {
      final paintList = List<List<Offset>>.of(state.paintList);
      final offsetList = List<Offset>.of(state.paintList.last)..add(nextPoint);
      paintList.last = offsetList;

      state = state.copyWith(paintList: paintList);
    }
  }

  // 描画終了
  void endPaint() => state = state.copyWith(isDrag: false);
}
