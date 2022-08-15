import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// メールアドレステキストコントローラ
final emailControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// ユーザIDテキストコントローラ
final userIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// パスワードテキストコントローラ
final passWordIdControllerStateProvider = StateProvider<TextEditingController>(
    (_) => TextEditingController(text: ''));

/// 選択Index
final selectedIndexProvider = StateProvider<int>((_) => 0);
