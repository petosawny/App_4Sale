import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
   CustomText({Key? key}) : super(key: key);
String? text = "";
double? fontSize ;
String? color  ;

  @override
  Widget build(BuildContext context) {
    return Text(
        "$text",
      style: TextStyle(
      fontSize: fontSize,

    ),
    );
  }
}
