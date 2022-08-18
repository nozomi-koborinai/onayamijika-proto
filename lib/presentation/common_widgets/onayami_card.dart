import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

class OnayamiCard extends StatelessWidget {
  final String cardName;
  final String distance;
  final String content;
  final String heroTag;
  final IconData icon;
  final Function() onPressed;

  const OnayamiCard(
      {required this.icon,
      required this.distance,
      required this.cardName,
      required this.content,
      required this.heroTag,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
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
                        Text(cardName,
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        Text(distance,
                            style:
                                TextStyle(color: AppColors.white, fontSize: 12))
                      ],
                    ),
                    CircleAvatar(
                      foregroundColor: AppColors.gray,
                      backgroundColor: AppColors.white,
                      child: Icon(icon, size: 30),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      // 枠線
                      border: Border.all(color: AppColors.white, width: 1),
                      // 角丸
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(content,
                          style: TextStyle(color: AppColors.gray)),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(bottom: 5),
                  child: FloatingActionButton.extended(
                    heroTag: heroTag,
                    backgroundColor: AppColors.intenseBlue,
                    icon: const Icon(Icons.add_reaction_outlined), //アイコンは無しでもOK
                    label: const Text('お悩み解決シールを送る'),
                    onPressed: () => onPressed.call(),
                  ),
                )
              ],
            ),
          ),
        ),
        back: Card(
          color: AppColors.superLightBrown, // Card自体の色
          margin: const EdgeInsets.all(10),
          elevation: 10, // 影の離れ具合
          shadowColor: AppColors.superLightBrown,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('お悩み解決シール',
                    style: TextStyle(
                        color: AppColors.gray, fontWeight: FontWeight.w200)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(
                        foregroundColor: AppColors.gray,
                        backgroundColor: AppColors.white,
                        child: Icon(icon, size: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(
                        foregroundColor: AppColors.gray,
                        backgroundColor: AppColors.white,
                        child: Icon(icon, size: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(
                        foregroundColor: AppColors.gray,
                        backgroundColor: AppColors.white,
                        child: Icon(icon, size: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3.0),
                      child: CircleAvatar(
                        foregroundColor: AppColors.gray,
                        backgroundColor: AppColors.white,
                        child: Icon(icon, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ), // 影の色
        ),
      ),
    );
  }
}
