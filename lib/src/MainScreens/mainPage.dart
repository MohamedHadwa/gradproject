import 'package:flutter/material.dart';
import 'package:gradproject/src/MainScreens/chat/chat.dart';
import 'package:gradproject/src/MainScreens/notification/notificationScreen.dart';
import 'package:gradproject/src/MainScreens/profile/profileScreen.dart';
import 'package:gradproject/src/MainScreens/search/page.dart';
import 'package:gradproject/src/MainWidgets/drawer.dart';

class MainPage extends StatefulWidget {
  final int index;
  MainPage({this.index});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Smart Parenting'),
          actions: [
            IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NotificationsScreen()));
                }),
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SearchPage()));
                }),
          ],
        ),
        drawer: AppDrawer(),
        extendBody: true,
        body: Center(child: Chat()));
  }
}
