import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final double height;
  final double width;
  final Widget child;
  const Header({Key key, this.height, this.width, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RoundedClipper1(),
      child: Container(
        height: height,
        alignment: Alignment.center,
        width: width,
        color: Theme.of(context).primaryColor,
        child: child,
      ),
    );
  }
}

class RoundedClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0020000, size.height * 0.0060000);
    path_0.lineTo(0, size.height * 0.6000000);
    path_0.quadraticBezierTo(size.width * -0.0015000, size.height * 0.7995000,
        size.width * 0.2000000, size.height * 0.8020000);
    path_0.cubicTo(
        size.width * 0.3500000,
        size.height * 0.8020000,
        size.width * 0.6500000,
        size.height * 0.8020000,
        size.width * 0.8000000,
        size.height * 0.8020000);
    path_0.quadraticBezierTo(size.width * 0.9990000, size.height * 0.8025000,
        size.width, size.height);
    path_0.lineTo(size.width, 0);

    return path_0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
