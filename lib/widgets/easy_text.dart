import 'package:flutter/material.dart';
import 'package:movie_home/constant/colors.dart';

class EasyText extends StatelessWidget {
  EasyText({Key? key,required this.text,this.color = kWhite,this.fontSize = 14 ,this.fontWeight = FontWeight.normal}) : super(key: key);
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight
      ),
    );
  }
}