import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

class CommonCircleButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  const CommonCircleButton(
      {required this.iconData, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<CircleBorder>(
          const CircleBorder(),
        ),
      ),
      onPressed: () => onPressed.call(),
      child: Icon(iconData),
    );
  }
}

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
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.purple,
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
