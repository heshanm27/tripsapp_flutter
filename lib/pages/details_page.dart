import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripsapp/misc/colors.dart';
import 'package:tripsapp/widgets/app_button.dart';
import 'package:tripsapp/widgets/app_large_text.dart';
import 'package:tripsapp/widgets/app_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStar = 4;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  height: 350,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/mountain.jpeg"),
                          fit: BoxFit.cover)),
                  child: Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 40),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                        ),
                        IconButton(
                            onPressed: () {},
                            color: Colors.white,
                            icon: Icon(Icons.more_vert))
                      ],
                    ),
                  ) ,
                )),
            // Positioned(
            //     left: 20,
            //     top: 30,
            //     right: 20,
            //     child: Container(
            //       width: MediaQuery.of(context).size.width,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           IconButton(
            //             onPressed: () {},
            //             icon: Icon(Icons.menu),
            //             color: Colors.white,
            //           ),
            //           IconButton(
            //               onPressed: () {},
            //               color: Colors.white,
            //               icon: Icon(Icons.more_vert))
            //         ],
            //       ),
            //     )),
            Positioned(
                top: 300,
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLArgeText(text: "Yosimite", color: Colors.black87),
                          AppLArgeText(
                            text: "\$ 250",
                            color: AppColors.mainColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "USA,California",
                            color: AppColors.textColor2,
                            size: 14,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStar
                                    ? AppColors.starColor
                                    : AppColors.textColor2,
                              );
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0/5)",
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      AppLArgeText(
                          text: "People",
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: "Number of people in your group",
                        color: AppColors.textColor2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: AppButton(
                                  color: selectedIndex==index?Colors.white: Colors.black,
                                  backgroundColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                                  borderColor: selectedIndex==index?Colors.black:AppColors.buttonBackground,
                                  size: 60,
                                  text: (index + 1).toString(),
                                )),
                          );
                        }),
                      ),
                      SizedBox(height: 20,),
                      AppLArgeText(text: "Description",color: Colors.black.withOpacity(0.8),size: 20,),
                      SizedBox(height: 10,),
                      AppText(text: "in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
                    ],
                  ),
                )),

          ],
        ),
      ),
    );
  }
}
