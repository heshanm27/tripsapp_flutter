import 'package:flutter/material.dart';
import 'package:tripsapp/pages/home_page.dart';
import 'package:tripsapp/pages/navpages/bar_item_page.dart';
import 'package:tripsapp/pages/navpages/my_page.dart';
import 'package:tripsapp/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  //routes pages
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int curruntIndex = 0;

  void onTap(int index) {
    setState(() {
      curruntIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curruntIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: curruntIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: "Bar"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "My"),
        ],
      ),
    );
  }
}
