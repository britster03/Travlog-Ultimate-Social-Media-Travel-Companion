import 'package:flutter/material.dart';
import 'package:travlog/main.dart';
import 'package:travlog/my_page.dart';
import 'package:travlog/pilgrimage_page.dart';
import 'package:travlog/vlog_page.dart';
import 'package:travlog/welcome_page.dart';
import 'home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), PilgrimagePage(), WelcomePage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.pix_rounded)),
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.videocam)),
            BottomNavigationBarItem(
                label: 'Home', icon: Icon(Icons.account_circle)),
          ]),
    );
  }
}
