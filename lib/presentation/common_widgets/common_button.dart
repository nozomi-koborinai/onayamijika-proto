import 'package:flutter/material.dart';
import 'package:onayamijika/utils/hex_color.dart';

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
        primary: HexColor('a1eafb'),
        onPrimary: HexColor('ffffff'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () => onPressed.call(),
      child: Text(caption),
    );
  }
}
