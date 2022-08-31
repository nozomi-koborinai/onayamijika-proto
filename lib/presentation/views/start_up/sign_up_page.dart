import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';
import 'package:onayamijika/presentation/components/common_button.dart';
import 'package:onayamijika/presentation/components/common_text_field.dart';
import 'package:onayamijika/presentation/views/start_up/sign_up_page_view_model.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  // //コントロールバインド用のコントローラ
  // TextEditingController nameController = TextEditingController();
  // TextEditingController userIdController = TextEditingController();
  // TextEditingController selfIntroductionController = TextEditingController();
  // TextEditingController passController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // NetworkImage? image;
  // final bool _isObscure = true;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final SignUpPageViewModel vm = ref.watch(signUpPageViewModelProvider);
    return Scaffold(
      appBar: CommonAppBar(title: 'Sign Up'),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 10.0, top: 10.0, right: 25.0, bottom: 70.0),
        child: Column(children: [
          CommonTextField(
              labelText: 'メールアドレス',
              hintText: 'example@gmail.com',
              controller: vm.emailController),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: CommonTextField(
              labelText: 'ユーザーID',
              controller: vm.userIdController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: CommonTextField(
              labelText: 'パスワード',
              isPasswordText: true,
              controller: vm.passWordController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: SizedBox(
              width: 75,
              child: CommonRegistButton(
                  caption: '登録',
                  onPressed: () => vm.onPressedFromRegist(context)),
            ),
          ),
        ]),
      ),
    );
  }
}
