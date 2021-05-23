import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChachedImg extends StatelessWidget {
  final String imag;
  final String placeError;

  const ChachedImg({Key key, this.imag, this.placeError}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    try {
      return CachedNetworkImage(
        imageUrl: imag,
        errorWidget: (context, url, error) => CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/avatar.jpeg')),
        fadeInDuration: Duration(seconds: 2),
        placeholder: (context, url) => CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/avatar.jpeg')),
        imageBuilder: (context, provider) =>
            CircleAvatar(radius: 60, backgroundImage: provider),
      );
    } catch (e) {
      print(e);
      return CircleAvatar(
          radius: 60, backgroundImage: AssetImage('assets/images/avatar.jpeg'));
    }
  }
}
