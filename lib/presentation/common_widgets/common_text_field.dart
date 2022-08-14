import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

/// アプリ内共通で使用するテキストフィールド
class CommonTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final bool isPasswordText;
  TextEditingController controller;
  bool _isObscure = true;

  /// param1 -> labelText：テキストフィールドの見出しに使用する文字
  /// param2 -> hintText：ウォーターマーク
  /// param3 -> isPasswordText：パスワード入力のためのテキストフィールドかどうか(true：パスワード用テキストフィールド、false：通常テキストフィールド)
  CommonTextField(
      {required this.labelText,
      required this.controller,
      this.hintText = '',
      this.isPasswordText = false,
      Key? key})
      : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isPasswordText ? widget._isObscure : false,
      decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          labelStyle: TextStyle(color: AppColors.gray),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: AppColors.purple),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: AppColors.purple),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          suffixIcon: widget.isPasswordText
              ? IconButton(
                  color: AppColors.gray,
                  icon: Icon(widget._isObscure
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      widget._isObscure = !widget._isObscure;
                    });
                  },
                )
              : null),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
