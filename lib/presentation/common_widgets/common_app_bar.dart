import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

/// アプリ内共通のアプリバー
class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isDispBoundary;

  /// param：title -> アプリバーに表示するタイトル
  /// param：isDispBoundary -> 境界線を表示するかどうか（true:表示する、false：表示しない）
  CommonAppBar({required this.title, this.isDispBoundary = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.gray),
      title: Text(
        title,
        style: TextStyle(color: AppColors.gray),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      elevation: isDispBoundary ? 2 : 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
