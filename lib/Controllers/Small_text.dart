import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  String text;
  double size;

   SmallText({Key? key, required this.text, this.color = Colors.blueGrey, this.size = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
