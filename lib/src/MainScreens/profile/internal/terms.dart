import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:gradproject/src/MainWidgets/defaultAppbar.dart';

class Privace extends StatefulWidget {
  @override
  _PrivaceState createState() => _PrivaceState();
}

class _PrivaceState extends State<Privace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: defaultAppBar(
        context: context,
        title: "privacy",
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
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Html(
                      data: "privacy",
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
