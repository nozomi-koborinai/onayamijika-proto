import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/common_widgets/common_button.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/alert_page.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/onayami_cards_page.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/profile_page.dart';
import 'package:onayamijika/presentation/views_and_view_models/onayamijika/screen_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Screen extends ConsumerWidget {
  Screen({Key? key}) : super(key: key);

  List<Widget> pageList = [
    const OnayamiCardsPage(),
    const AlertPage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScreenViewModel vm = ref.watch(screenViewModelProvider);
    return Scaffold(
        body: SafeArea(
          bottom: true,
          child: pageList[vm.selectedIndex],
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: SalomonBottomBar(
            selectedColorOpacity: 0.15,
            unselectedItemColor: AppColors.gray,
            items: [
              SalomonBottomBarItem(
                  icon: const Icon(Icons.home_outlined),
                  title: const Text('Home'),
                  selectedColor: AppColors.intensePurple),
              SalomonBottomBarItem(
                  icon: const Icon(Icons.add_alert_outlined),
                  title: const Text('通知'),
                  selectedColor: AppColors.intenseBlue),
              SalomonBottomBarItem(
                  icon: const Icon(Icons.person_outline),
                  title: const Text('あなた'),
                  selectedColor: AppColors.intensePink),
            ],
            currentIndex: vm.selectedIndex,
            onTap: (index) => vm.onTap(index),
          ),
        ),
        floatingActionButton:
            CommonFloatingActionButton(onPressed: () => vm.onPressed(context)));
  }
}
