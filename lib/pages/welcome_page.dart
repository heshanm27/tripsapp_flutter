import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelomePage extends StatefulWidget {
  const WelomePage({Key? key}) : super(key: key);

  @override
  State<WelomePage> createState() => _WelomePageState();
}

class _WelomePageState extends State<WelomePage> {

  List images = [
    "welcome-one.png",
    "welcome-three.png",
   "welcome-two.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_,index){
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image: AssetImage(
                      "assets/"+images[index]
                  ),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  children: [
                    Column(
                      children: [

                      ],
                    )
                  ],
                ),
              ),
            );
      })
    );
  }
}
