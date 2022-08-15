import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

class CommonRegistButton extends StatelessWidget {
  final String caption;
  final Function onPressed;
  const CommonRegistButton(
      {required this.caption, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: AppColors.purple,
        onPrimary: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => onPressed.call(),
      child: Text(caption),
    );
  }
}

class CommonFloatingActionButton extends StatelessWidget {
  final Function() onPressed;
  const CommonFloatingActionButton({required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.purple,
      onPressed: () => onPressed.call(),
      child: const Icon(
        Icons.add_card_outlined,
        color: Colors.white,
      ),
    );
  }
}
