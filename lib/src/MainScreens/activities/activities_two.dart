import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ActivitiesTwoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Activities',
          style: TextStyle(
            color: Colors.brown,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 20.0,
          top: 20.0,
          end: 20.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'select gender',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                child: Text(
                  'boy',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                backgroundColor: Colors.brown,
                radius: 30.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              CircleAvatar(
                child: Text(
                  'girl',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
                backgroundColor: Colors.grey,
                radius: 30.0,
              ),
            ]),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'select Age',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  10,
                  (index) => Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 5.0,
                    ),
                    child: CircleAvatar(
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      backgroundColor: Colors.green[200],
                      radius: 10.0,
                    ),
                  ),
                ).toList()),
          ],
        ),
      ),
    );
  }
}
