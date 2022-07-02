import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tripsapp/misc/colors.dart';
import 'package:tripsapp/widgets/app_large_text.dart';
import 'package:tripsapp/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

  var images ={
    "Balloning":"balloning.png",
    "Hiking":"hiking.png",
    "Kayaking":"kayaking.png",
    "Soorking":"snorkling.png"
  };

 


  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //appbar
          Container(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          //header text
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLArgeText(text: "Discover"),
          ),
          SizedBox(
            height: 30,
          ),
          //tabBar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  controller: tabController,
                  labelColor: Colors.black54,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                  tabs: [
                    Tab(
                      text: "Places",
                    ),
                    Tab(
                      text: "Insperations",
                    ),
                    Tab(
                      text: "Emagination",
                    ),
                  ]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10, top: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage("assets/mountain.jpeg"),
                          fit: BoxFit.cover
                        ),
                      ),
                    );
                  },
                ),
                Text("There"),
                Text("Bye"),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLArgeText(
                  text: "Expolre More",
                  size: 22,
                ),
                AppText(text: "see all", color: AppColors.textColor2)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 120,
            margin: const EdgeInsets.only(left: 20),
            width: double.maxFinite,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage("assets/"+images.values.elementAt(index)),
                               fit: BoxFit.cover
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: AppText(text: images.keys.elementAt(index),color: AppColors.textColor2,)
                        )
                      ],
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}

//create circuler indicator
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirlePainter(color: color, radius: radius);
  }
}

class _CirlePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirlePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    //xy offset
    final Offset cirleXOffset = Offset(configuration.size!.width / 2 - radius,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + cirleXOffset, radius, _paint);
  }
}
