import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_account_repository.dart';
import 'package:onayamijika/domain/interfaces/i_onayami_card_repository.dart';
import 'package:onayamijika/domain/interfaces/i_solution_seal_repository.dart';
import 'package:onayamijika/domain/models/account.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/infrastructure/repositories/account_repository.dart';
import 'package:onayamijika/infrastructure/repositories/onayami_card_repository.dart';
import 'package:onayamijika/infrastructure/repositories/solution_seal_repository.dart';
import 'package:onayamijika/presentation/views/onayamijika/screen.dart';
import 'package:onayamijika/presentation/views/start_up/start_up_page.dart';
import 'package:onayamijika/utils/app_values.dart';
import 'package:onayamijika/utils/function_utils.dart';
import 'firebase_options.dart';

void main() async {
  // Firebaseの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 位置情報確認ダイアログを表示
  // アプリ起動時の端末の位置情報も保持しておく
  FunctionUtils.instance.determinePosition();

  runApp(ProviderScope(
    overrides: [
      solutionSealRepositoryProvider
          .overrideWithProvider(firebaseSolutionSealRepositoryProvider),
      onayamiCardRepositoryProvider
          .overrideWithProvider(firebaseOnayamiCardRepositoryProvider),
      accountRepositoryProvider
          .overrideWithProvider(firebaseAccountRepositoryProvider)
    ],
    child: const MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
            future: _isLogin(ref),
            builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
              if (snapshot.hasData) {
                // 非同期処理終了
                return snapshot.data!;
              } else {
                // 非同期処理中
                return Container(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(
                      color: AppColors.purple,
                    ));
              }
            }));
  }
}

/// ログイン状態をチェックしてそのログイン状態に応じた画面を取得
/// ログイン済み　　：カード一覧ページへ
/// ログインしてない：スタートアップページへ
Future<Widget> _isLogin(WidgetRef ref) async {
  Widget page = const StartUpPage();
  final repository = ref.watch(accountRepositoryProvider);

  await for (User? user in FirebaseAuth.instance.authStateChanges()) {
    if (user != null) {
      final currentAccount =
          await repository.fetchAccountFromUid(uid: user.uid);
      if (currentAccount != null) {
        Authentication.instance.myAccount = Account(
          accountUid: user.uid,
          accountId: currentAccount.accountId,
          accountName: currentAccount.accountName,
          accountImageUrl: currentAccount.accountImageUrl,
        );
        page = Screen();
      }
    }
    break;
  }
  return page;
}
