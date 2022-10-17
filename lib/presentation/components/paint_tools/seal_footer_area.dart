import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/domain/interfaces/i_solution_seal_repository.dart';
import 'package:onayamijika/infrastructure/authentication/authentication.dart';
import 'package:onayamijika/infrastructure/dtos/solution_seal_document.dart';
import 'package:onayamijika/infrastructure/storage/storage_service.dart';
import 'package:onayamijika/presentation/components/common_button.dart';
import 'package:onayamijika/presentation/states/seal_paint_state.dart';
import 'package:onayamijika/presentation/views/onayamijika/onayami_cards_page_view_model.dart';
import 'package:onayamijika/utils/app_values.dart';
import 'package:onayamijika/utils/function_utils.dart';

/// お悩みシールの描画編集ツールエリア
class SealFooterArea extends ConsumerWidget {
  final double height;
  final GlobalKey globalKey;
  const SealFooterArea(
      {required this.height, required this.globalKey, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(height: 30),
            CommonOnayamiSealButton(
                caption: 'お悩み解決シールを送る',
                color: AppColors.purple,
                iconData: Icons.send,
                onPressed: () async => onPressed(context, ref)),
          ],
        ));
  }

  /// シール確認ダイアログを表示
  Future<void> onPressed(BuildContext context, WidgetRef ref) async {
    final Uint8List? image =
        await FunctionUtils.instance.widgetToImage(globalKey: globalKey);
    if (image == null) return;

    // NGならシール作成ウィンドウを閉じるだけ
    if (!await showSealQuestionDialog(context, 'シール作成イメージ', image)) {
      return;
    }

    // OKなら
    // ・Firesbaseに書き込み
    // ・シール作成シートをクリア
    // ・シール作成シートを閉じる
    final imageUrl = await ref.watch(storageServiceProvider).uploadImageFile(
        uId: Authentication.instance.myAccount.accountUid, sealImage: image);

    final newSeal = SolutionSealDocument(
        sealType: SealType.paint.name,
        text: '',
        imageUrl: imageUrl,
        isFavorite: false,
        cardId:
            ref.watch(selectedOnayamiCardDocumentProvider.state).state.cardId,
        createdDateTime: DateTime.now());
    await ref.watch(solutionSealRepositoryProvider).addSeal(newSeal: newSeal);

    // ペイントエリアをクリアして前ページに戻る
    ref.read(sealPaintStateNotifierProvider.notifier).clear();
    Navigator.pop(context);
  }

  Future<bool> showSealQuestionDialog(
      BuildContext context, String title, Uint8List? sealImage) async {
    bool result = false;

    await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.grey),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: sealImage == null
                        ? null
                        : Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColors.purple, width: 3),
                            ),
                            child:
                                Image.memory(sealImage.buffer.asUint8List())),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.grey,
                          side: BorderSide(
                            width: 1.0,
                            color: AppColors.purple,
                          ),
                          backgroundColor: AppColors.lightGrey,
                          shadowColor: AppColors.grey,
                          elevation: 5,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          child: Text('編集を続ける'),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.white,
                          shadowColor: AppColors.grey,
                          backgroundColor: AppColors.purple,
                          elevation: 5,
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          result = true;
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          child: Text('シールを送る'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                ],
              ),
            ),
          );
        });
    return result;
  }
}
