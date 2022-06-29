import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripsapp/misc/colors.dart';
import 'package:tripsapp/widgets/app_large_text.dart';
import 'package:tripsapp/widgets/app_text.dart';
import 'package:tripsapp/widgets/responsive_button.dart';

class WelomePage extends StatefulWidget {
  const WelomePage({Key? key}) : super(key: key);

  @override
  State<WelomePage> createState() => _WelomePageState();
}

class _WelomePageState extends State<WelomePage> {
  List images = ["welcome-one.png", "welcome-three.png", "welcome-two.png"];
  List header = ["Trips", "Enjoy The View", "Your Dream"];
  List miniHeader = ["Mountains", "Beauty Of Vally", "Let's Go"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/" + images[index]),
                        fit: BoxFit.cover)),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLArgeText(text: header[index]),
                          AppText(text: miniHeader[index], size: 30),
                          SizedBox(height: 20),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                              color: AppColors.textColor2,
                            ),
                          ),
                          SizedBox(height: 20),
                          ResponsiveButton()
                        ],
                      ),
                      Column(

                        children: List.generate(3, (indexDots){
                          return Container(
                            margin: const EdgeInsets.only(bottom: 4),
                            width: 8,
                            height:index == indexDots? 25 : 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color:index==indexDots?AppColors.mainColor:AppColors.mainColor.withOpacity(0.3)
                            ),
                          );
                        }),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
