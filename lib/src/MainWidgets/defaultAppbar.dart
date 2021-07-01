import 'package:flutter/material.dart';

Widget defaultAppBar({
  @required BuildContext context,
  @required String title,
  Function onPress,
  bool hasBack = false,
  double elevation,
  Widget icon,
  List<Widget> actions,
}) {
  return AppBar(
    elevation: elevation ?? 4,
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
    centerTitle: true,
    actions: actions ?? [],
    leading: hasBack
        ? InkWell(onTap: onPress, child: Icon(Icons.arrow_back_ios))
        : icon ?? SizedBox(),
    backgroundColor: Theme.of(context).primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
    ),
  );
}
