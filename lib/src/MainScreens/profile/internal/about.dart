import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gradproject/src/MainWidgets/defaultAppbar.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: defaultAppBar(
        context: context,
        title: "about us",
        hasBack: true,
        onPress: () => Navigator.pop(context),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 40.0,
            ),
            child: ListView(
              children: <Widget>[
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Html(
                      data: "about us",
                      // padding: EdgeInsets.all(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
