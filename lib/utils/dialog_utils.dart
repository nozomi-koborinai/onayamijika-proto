import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

class DialogUtils {
  /// singleton
  DialogUtils._();
  static final DialogUtils instance = DialogUtils._();

  ///確認ダイアログ表示
  ///return: true:OK, false:Cancel
  bool showDialogQuestion(
      {required BuildContext context,
      required String title,
      required String msg}) {
    bool result = false;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            ElevatedButton(
              onPressed: () => result = true,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(AppMessages.yes),
            ),
            ElevatedButton(
              onPressed: () {
                result = false;
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(AppMessages.yes),
            ),
          ],
        );
      },
    );
    return result;
  }

  ///エラーダイアログ表示
  void showDialogError(
      {required BuildContext context, String title = '', required String msg}) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return AlertDialog(
          title: Text(
            title.isEmpty ? AppMessages.error : title,
            style:
                const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          content: Text(msg, style: TextStyle(color: AppColors.gray)),
          actions: [
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.intensePink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(AppMessages.ok),
              ),
            ),
          ],
        );
      },
    );
  }
}
