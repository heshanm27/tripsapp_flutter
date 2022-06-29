import 'package:flutter/cupertino.dart';
import 'package:tripsapp/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  final String? text;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width, this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColors.mainColor),
      child: Row(
        children: [
          Image.asset("assets/button-one.png"),
        ],
      ),
    );
  }
}
