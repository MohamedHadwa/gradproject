import 'package:gradproject/src/MainWidgets/defaultAppbar.dart';
import 'package:flutter/material.dart';
import 'widgets/notificationCard.dart';

class NotificationsScreen extends StatefulWidget {
  final Function onBack;

  const NotificationsScreen({Key key, this.onBack}) : super(key: key);
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: defaultAppBar(
          context: context,
          title: "Notification",
          hasBack: widget.onBack ?? false,
          onPress: widget.onBack,
        ),
        body: ListView(
          children: [NotificationCard()],
        ));
  }
}
