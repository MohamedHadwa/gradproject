import 'package:flutter/material.dart';
import 'package:gradproject/src/MainWidgets/app_bottom_bar.dart';
import 'package:gradproject/src/MainScreens/notification/notificationScreen.dart';
import 'package:gradproject/src/MainScreens/profile/profileScreen.dart';

class MainPage extends StatefulWidget {
  final int index;
  MainPage({this.index});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  var _bottomNavIndex = 2;

  List<Widget> widgets = [
    NotificationsScreen(),
    Center(
      child: Icon(Icons.home),
    ),
    Center(
      child: Icon(Icons.search),
    ),
    ProfileScreen()
  ];

  void selectedpage() {
    if (widget.index != null) {
      setState(() {
        _bottomNavIndex = widget.index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      drawer: Drawer(),
      body: widgets[_bottomNavIndex],
      bottomNavigationBar: AppBottomBar(
        onTap: (v) {
          setState(() {
            _bottomNavIndex = v;
          });
        },
        inx: _bottomNavIndex,
      ),
    );
  }
}
