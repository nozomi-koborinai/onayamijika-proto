import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_onayami_card_repository.dart';
import 'package:onayamijika/infrastructure/repositories/onayami_card_repository.dart';
import 'package:onayamijika/presentation/views/start_up/start_up_page.dart';
import 'package:onayamijika/utils/function_utils.dart';
import 'firebase_options.dart';

void main() async {
  // Firebaseの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // 位置情報確認ダイアログを表示
  FunctionUtils.instance.determinePosition();

  runApp(ProviderScope(
    overrides: [
      onayamiCardRepositoryProvider
          .overrideWithProvider(firebaseOnayamiCardRepositoryProvider),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartUpPage(),
    );
  }
}
