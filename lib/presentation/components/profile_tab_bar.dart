import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/my_cards.dart';
import 'package:onayamijika/utils/app_values.dart';

class ProfileTabBar extends ConsumerWidget {
  const ProfileTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            backgroundColor: AppColors.purple,
            unselectedBackgroundColor: Colors.white,
            borderColor: AppColors.purple,
            labelStyle: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
            unselectedLabelStyle:
                TextStyle(color: AppColors.purple, fontWeight: FontWeight.bold),
            borderWidth: 1,
            unselectedBorderColor: AppColors.purple,
            radius: 100,
            tabs: const [
              Tab(
                text: 'マイカード',
                icon: Icon(Icons.credit_card),
              ),
              Tab(
                text: 'シールを送ったカード',
                icon: Icon(Icons.sentiment_satisfied_alt),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                const MyCards(),
                Container(child: const Text('シールを送ったカードページ')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
