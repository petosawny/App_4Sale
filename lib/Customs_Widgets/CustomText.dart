import 'package:flutter/material.dart';
class CustomingText extends StatelessWidget {
  String? text;
  Color? color;
  double? size;
  FontWeight? weight;
  TextAlign? align;
  TextDirection? direction;

  CustomingText(
      {
        required this.text,
        this.direction,
        this.align,
        required this.color,
        required this.size,
        required this.weight
      }
      );

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      textAlign: align,
      textDirection: direction,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,

      ),
    );
  }
}
