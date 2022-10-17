import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/common_app_bar.dart';
import 'package:onayamijika/presentation/components/common_button.dart';
import 'package:onayamijika/presentation/components/profile_tab_bar.dart';
import 'package:onayamijika/presentation/views/onayamijika/profile_page_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(profilePageViewModelProvider);

    return Scaffold(
      appBar: CommonAppBar(
        title: 'プロフィール',
        isAddCardsButton: true,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(vm.imageURL),
            ),
            Text(vm.accountName,
                style: TextStyle(color: AppColors.grey, fontSize: 20)),
            Text('@${vm.accountId}',
                style: TextStyle(color: AppColors.grey, fontSize: 15)),
            CommonRegistButton(
                caption: '編集',
                onPressed: () async => await vm.onPressedFromEdit(context)),
            Divider(
              color: Colors.grey[475],
              thickness: 2,
              height: 50,
            ),
            const Expanded(child: ProfileTabBar())
          ],
        ),
      ),
    );
  }
}
