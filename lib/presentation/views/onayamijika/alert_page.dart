import 'package:flutter/material.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: '通知',
        isAddCardsButton: true,
      ),
    );
  }
}
