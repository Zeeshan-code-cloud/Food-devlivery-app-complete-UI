import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText({
    Key? key,
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.color = Colors.green,
    this.size = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: size,
        overflow: overFlow,
      ),
    );
  }
}
