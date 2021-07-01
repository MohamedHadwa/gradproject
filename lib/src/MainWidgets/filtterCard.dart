import 'package:flutter/material.dart';

class Filtter extends StatelessWidget {
  final String image;
  final String title;
  final Function onTap;
  final Color backgroundColor;
  final Color iconColor;
  final Color titleColor;

  const Filtter(
      {Key key,
      this.image,
      this.title,
      this.onTap,
      this.backgroundColor,
      this.titleColor,
      this.iconColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor ?? Colors.grey[200],
            ),
            child: ImageIcon(
              AssetImage(image),
              size: 30,
              color: iconColor ?? Colors.black38,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(color: titleColor ?? Colors.grey, fontSize: 12),
        )
      ],
    );
  }
}
