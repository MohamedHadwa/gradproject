import 'dart:async';
import 'package:gradproject/src/MainScreens/activities/activities_screen.dart';
import 'package:gradproject/src/MainScreens/activities/activities_two.dart';
import 'package:gradproject/src/MainScreens/ask_me/page.dart';
import 'package:gradproject/src/MainScreens/call_page/page.dart';
import 'package:gradproject/src/MainScreens/doctors_list/page.dart';
import 'package:gradproject/src/MainScreens/edit_account/account_screen.dart';
import 'package:gradproject/src/MainScreens/edit_profile/edit_prof_screen.dart';
import 'package:gradproject/src/MainScreens/edit_profile/profile_screen.dart';
import 'package:gradproject/src/MainScreens/q_a_answer/page.dart';
import 'package:gradproject/src/MainScreens/search/page.dart';
import 'package:gradproject/src/MainScreens/settings/page.dart';
import 'package:gradproject/src/Repository/firebaseNotifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'introView.dart';

class Splash extends StatefulWidget {
  final GlobalKey<NavigatorState> navigator;

  const Splash({Key key, this.navigator}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  Future<Timer> _loadData() async {
    return Timer(
      Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            // builder: (c) => IntroPage(),
            // builder: (c) => AskMe(),
            // builder: (c) => DoctorsListPage(),
            // builder: (c) => QandAnswer(),
            // builder: (c) => CallPage(),
            // builder: (c) => SearchPage(),
            //builder: (c) => SettingsScreen(),
            //builder: (context) => ActivitiesScreen(),
            // builder: (context) => ProfileScreen(),
            //builder: (context) => AccountScreen(),
            //builder: (context) => EditProfileScreen(),
            builder: (context) => ActivitiesTwoScreen(),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    _loadData();
    FirebaseNotifications().setUpFirebase(widget.navigator);
    super.initState();
  }

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/photos/splach_image.jpg",
            fit: BoxFit.fill,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * .8),
              child: Shimmer.fromColors(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "hadwa",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        " مرحبا بكم في تطبيق ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  baseColor: Theme.of(context).accentColor,
                  highlightColor: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
