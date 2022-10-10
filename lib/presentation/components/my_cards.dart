import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:onayamijika/presentation/components/my_cards_view_model.dart';

class MyCards extends ConsumerWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(myCardsPageViewModelProvider);

    return Container();
  }
}
