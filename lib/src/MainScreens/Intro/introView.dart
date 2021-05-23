import 'package:flutter/material.dart';
import 'package:gradproject/src/MainScreens/Registeration/firstScreen.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() =>
      _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroViewsFlutter(
        [
          PageViewModel(
            pageColor: Theme.of(context).primaryColor,
            iconColor: null,
            bubble: Icon(
              Icons.priority_high,
              color: Colors.white,
            ),
            bubbleBackgroundColor: Theme.of(context).accentColor,
            title: Container(
              height: 0,
            ),
            body: Container(
              height: 0,
            ),
            mainImage: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage("assets/images/doctor_1.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            textStyle: TextStyle(color: Colors.black),
          ),
           PageViewModel(
            pageColor:Theme.of(context).primaryColor,
            iconColor: null,
            bubble: Icon(
              Icons.priority_high,
              color: Colors.white,
            ),
            bubbleBackgroundColor: Theme.of(context).accentColor,
            title: Container(
              height: 0,
            ),
            body: Container(
              height: 0,
            ),
            mainImage: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage("assets/images/doctor_2.jpg"),
                    fit: BoxFit.fill,
                  )),
            ),
            textStyle: TextStyle(color: Colors.black),
          ),
        ],
        onTapDoneButton: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => FirstScreen()),
            (Route<dynamic> route) => false,
          );
        },
        showNextButton: true,
        nextText: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 35.0,
          ),
        ),
        showSkipButton: true,
        skipText: Icon(
          Icons.skip_next,
          color: Colors.white,
        ),
        doneText: Icon(
          Icons.done,
          color: Colors.white,
        ),
        pageButtonsColor: Colors.indigo,
        pageButtonTextStyles: new TextStyle(
          fontSize: 16.0,
          fontFamily: "Regular",
        ),
      ),
    );
  }
}
