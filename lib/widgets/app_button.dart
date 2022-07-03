import 'package:flutter/material.dart';
import 'package:tripsapp/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  Color borderColor;
  double size;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButton({
    Key? key,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.size,
    this.isIcon =false,
    this.text,
    this.icon

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        border:Border.all(color: borderColor,width: 1.0) ,
        borderRadius: BorderRadius.circular(15),
      ),
      child: isIcon==false?Center(child: AppText(text: text!,color: color,)):Center(child: Icon(icon,color: color,)),
    );
  }
}
