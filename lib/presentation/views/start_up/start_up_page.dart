import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';
import 'package:onayamijika/presentation/views/start_up/log_in_page.dart';
import 'package:onayamijika/presentation/views/start_up/sign_up_page.dart';
import 'package:onayamijika/utils/app_values.dart';

class StartUpPage extends ConsumerWidget {
  const StartUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      // アプリバー
      appBar: CommonAppBar(
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 25.0, top: 0.0, right: 25.0, bottom: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // タイトル
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                'Welcome\nto オナヤミジカ',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.gray,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Log Inボタン
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.white,
                    backgroundColor: AppColors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Log In'),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Sign Upボタン
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.gray,
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Sign Up'),
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
