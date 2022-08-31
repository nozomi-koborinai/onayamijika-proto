import 'package:flutter/material.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: 'プロフィール',
        isAddCardsButton: true,
      ),
    );
  }
}
