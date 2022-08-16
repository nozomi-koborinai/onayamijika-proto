import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/common_widgets/common_app_bar.dart';
import 'package:onayamijika/utils/app_values.dart';

class OnayamiCardsPage extends ConsumerWidget {
  const OnayamiCardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CommonAppBar(title: 'お悩みカード一覧'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * (0.5),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Card(
                      color: AppColors.purple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('テスト人間',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('4km',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12))
                                  ],
                                ),
                                CircleAvatar(
                                  foregroundColor: AppColors.gray,
                                  backgroundColor: AppColors.white,
                                  child: const Icon(Icons.android, size: 30),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  // 枠線
                                  border: Border.all(
                                      color: AppColors.white, width: 1),
                                  // 角丸
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text(
                                      '足の怪我で週一回の買い物ができません。ものを持ってくれる方いませんか。',
                                      style: TextStyle(color: AppColors.gray)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: AppColors.intensePurple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.intensePurple,
                      child: Text(
                        'back\nここにお悩み解決シール貼ってくイメージ',
                        style: TextStyle(fontSize: 15, color: AppColors.white),
                      ), // 影の色
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * (0.5),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Card(
                      color: AppColors.purple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('ラーメン大好き',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('12km',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12))
                                  ],
                                ),
                                CircleAvatar(
                                  foregroundColor: AppColors.gray,
                                  backgroundColor: AppColors.white,
                                  child: const Icon(Icons.account_circle,
                                      size: 30),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  // 枠線
                                  border: Border.all(
                                      color: AppColors.white, width: 1),
                                  // 角丸
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('【緊急】\nおすすめのラーメン屋どこ',
                                      style: TextStyle(color: AppColors.gray)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: AppColors.intensePurple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.intensePurple,
                      child: Text(
                        'back\nここにお悩み解決シール貼ってくイメージ',
                        style: TextStyle(fontSize: 15, color: AppColors.white),
                      ), // 影の色
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * (0.5),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Card(
                      color: AppColors.purple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('fugafuga',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('16km',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12))
                                  ],
                                ),
                                CircleAvatar(
                                  foregroundColor: AppColors.gray,
                                  backgroundColor: AppColors.white,
                                  child: const Icon(Icons.android, size: 30),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  // 枠線
                                  border: Border.all(
                                      color: AppColors.white, width: 1),
                                  // 角丸
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('fugafugafugafuga',
                                      style: TextStyle(color: AppColors.gray)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: AppColors.intensePurple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.intensePurple,
                      child: Text(
                        'back\nここにお悩み解決シール貼ってくイメージ',
                        style: TextStyle(fontSize: 15, color: AppColors.white),
                      ), // 影の色
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * (0.5),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Card(
                      color: AppColors.purple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('hogehoge',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('23km',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12))
                                  ],
                                ),
                                CircleAvatar(
                                  foregroundColor: AppColors.gray,
                                  backgroundColor: AppColors.white,
                                  child: const Icon(Icons.account_circle,
                                      size: 30),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  // 枠線
                                  border: Border.all(
                                      color: AppColors.white, width: 1),
                                  // 角丸
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('hogehogehoge',
                                      style: TextStyle(color: AppColors.gray)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: AppColors.intensePurple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.intensePurple,
                      child: Text(
                        'back\nここにお悩み解決シール貼ってくイメージ',
                        style: TextStyle(fontSize: 15, color: AppColors.white),
                      ), // 影の色
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * (0.5),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Card(
                      color: AppColors.purple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('fugafuga',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('16km',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12))
                                  ],
                                ),
                                CircleAvatar(
                                  foregroundColor: AppColors.gray,
                                  backgroundColor: AppColors.white,
                                  child: const Icon(Icons.android, size: 30),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  // 枠線
                                  border: Border.all(
                                      color: AppColors.white, width: 1),
                                  // 角丸
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('fugafugafugafuga',
                                      style: TextStyle(color: AppColors.gray)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: AppColors.intensePurple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.intensePurple,
                      child: Text(
                        'back\nここにお悩み解決シール貼ってくイメージ',
                        style: TextStyle(fontSize: 15, color: AppColors.white),
                      ), // 影の色
                    ),
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: MediaQuery.of(context).size.width * (0.5),
                  child: FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    front: Card(
                      color: AppColors.purple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.pink,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('hogehoge',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text('23km',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 12))
                                  ],
                                ),
                                CircleAvatar(
                                  foregroundColor: AppColors.gray,
                                  backgroundColor: AppColors.white,
                                  child: const Icon(Icons.account_circle,
                                      size: 30),
                                )
                              ],
                            ),
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                margin:
                                    const EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  // 枠線
                                  border: Border.all(
                                      color: AppColors.white, width: 1),
                                  // 角丸
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Text('hogehogehoge',
                                      style: TextStyle(color: AppColors.gray)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    back: Card(
                      color: AppColors.intensePurple, // Card自体の色
                      margin: const EdgeInsets.all(10),
                      elevation: 10, // 影の離れ具合
                      shadowColor: AppColors.intensePurple,
                      child: Text(
                        'back\nここにお悩み解決シール貼ってくイメージ',
                        style: TextStyle(fontSize: 15, color: AppColors.white),
                      ), // 影の色
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
