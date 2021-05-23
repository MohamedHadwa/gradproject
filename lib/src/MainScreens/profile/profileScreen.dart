import 'package:flutter/material.dart';
import 'package:gradproject/src/MainWidgets/defaultAppbar.dart';
import 'package:gradproject/src/MainScreens/profile/internal/terms.dart';
import 'package:gradproject/src/MainScreens/profile/internal/about.dart';
import 'package:gradproject/src/MainScreens/profile/internal/editProfile.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(
        context: context,
        title: "Profile",
        hasBack: false,
        onPress: () {},
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/avatar.jpeg')),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      profileBtn("Edit Account", () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => EditProfile()));
                      }),
                      profileBtn("ask your doctor", () {}),
                      profileBtn("activites", () {}),
                      profileBtn("about us", () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => AboutApp()));
                      }),
                      profileBtn("books", () {}),
                      profileBtn("privacy", () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (c) => Privace()));
                      }),
                      profileBtn("Langusge", () {}),
                      SizedBox(
                        height: 40,
                      ),
                      profileBtn("Logout", () {}),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget profileBtn(String title, Function ontap) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: InkWell(
          onTap: ontap,
          child: Text(
            title,
            style: TextStyle(fontSize: 20),
          )),
    );
  }
}
