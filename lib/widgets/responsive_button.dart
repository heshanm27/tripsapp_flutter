import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripsapp/misc/colors.dart';
import 'package:tripsapp/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final String? text;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width=120, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive==true?double.maxFinite:width,
        height: 60,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
        child: Row(
          mainAxisAlignment: isResponsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
            isResponsive==true?Container(
                margin: EdgeInsets.only(left: 20),
                child: AppText(text:text!,color: Colors.white)):Container(),
            Image.asset("assets/button-one.png"),
          ],
        ),
      ),
    );
  }
}
