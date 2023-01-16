import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reusable_Row extends StatelessWidget {
  String text;
  IconData iconData;
  Color? color;//Sign of interrogation means that it may be null
   Reusable_Row({Key? key, required this.text, required this.iconData,this.color}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, color: color,),
        Text(text),

      ],
    );
  }
}
