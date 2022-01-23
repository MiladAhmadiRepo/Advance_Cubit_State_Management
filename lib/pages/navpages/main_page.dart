import 'package:blocpattern/pages/navpages/bar_item_page.dart';
import 'package:blocpattern/pages/navpages/home_page.dart';
import 'package:blocpattern/pages/navpages/my_page.dart';
import 'package:blocpattern/pages/navpages/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    List pages=[HomePage(),BarItemPage(),SearchPage(),MyPage()];
    void onclick(int index){
      setState(() {
        currentIndex=index;
      });
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        elevation: 0,
        onTap: onclick,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.app_blocking),label: "Main"),
          BottomNavigationBarItem(icon: Icon(Icons.add_chart),label: "Bar"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "My"),
        ],

      ),

    );
  }
}
