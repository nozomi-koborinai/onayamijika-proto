import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/common_widgets/common_app_bar.dart';

class OnayamiCardsPage extends ConsumerWidget {
  const OnayamiCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CommonAppBar(title: 'お悩みカード一覧'),
    );
  }
}
