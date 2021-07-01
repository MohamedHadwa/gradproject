import "package:gradproject/src/MainWidgets/list_animator.dart";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return ListAnimator(
      data:[1,2,3,4,5,6,7],
      child: (index) {
        return Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
            child: Row(
              children: [
                // Notification Image
                Container(
                  width: 45.0,
                  height: 45.0,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage("assets/icon/alarm.png"),
                    ),
                    // color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                // Notification Details
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Notification Title
                          Text(
                            "Title" ?? "",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.grey,
                                size: 13,
                              ),
                              SizedBox(width: 5),
                              // Notifications Title
                              Text(
                                "9:00" ?? "9:00",
                                style: TextStyle(
                                  height: 2,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 5),
                              // Notification Settings
                              InkWell(
                                onTap: () {
                                
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                    vertical: 5,
                                  ),
                                  child: Icon(
                                    Icons.delete,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      //  Notification Description
                      Text(
                        "Description" ?? "",
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
