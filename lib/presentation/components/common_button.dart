import 'package:flutter/material.dart';
import 'package:onayamijika/utils/app_values.dart';

class CommonCircleButton extends StatelessWidget {
  final IconData iconData;
  final Function onPressed;
  final Color foregroundColor;
  final Color backgroundColor;
  final double size;
  const CommonCircleButton(
      {required this.iconData,
      required this.onPressed,
      required this.foregroundColor,
      required this.backgroundColor,
      this.size = 27,
      super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        shape: const CircleBorder(),
      ),
      onPressed: () => onPressed.call(),
      child: Icon(iconData, size: size),
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

class CommonOnayamiSealButton extends StatelessWidget {
  final Color? color;
  final IconData iconData;
  final String caption;
  final Function onPressed;
  const CommonOnayamiSealButton(
      {required this.color,
      required this.iconData,
      required this.caption,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        heroTag: '1',
        backgroundColor: color,
        icon: Icon(iconData),
        label: Text(caption),
        onPressed: () => onPressed.call());
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
