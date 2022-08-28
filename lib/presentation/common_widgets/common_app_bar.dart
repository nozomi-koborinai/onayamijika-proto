import 'package:flutter/material.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/card_making_page.dart';
import 'package:onayamijika/utils/app_values.dart';

/// アプリ内共通のアプリバー
class CommonAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isDispBoundary;
  final bool automaticallyImplyLeading;
  final bool isAddCardsButton;

  /// param：title -> アプリバーに表示するタイトル
  /// param：isDispBoundary -> 境界線を表示するかどうか（true:表示する、false：表示しない）
  CommonAppBar(
      {required this.title,
      this.isDispBoundary = false,
      this.automaticallyImplyLeading = true,
      this.isAddCardsButton = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.gray),
      title: Text(
        title,
        style: TextStyle(color: AppColors.gray),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      elevation: isDispBoundary ? 2 : 0,
      actions: isAddCardsButton
          ? <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: IconButton(
                  icon: Icon(Icons.add_card_outlined,
                      color: AppColors.intensePurple, size: 28),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (content) => const CardMakingPage()));
                  },
                ),
              ),
            ]
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
