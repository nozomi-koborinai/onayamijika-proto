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
