import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 20,
      child: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          Navigator.of(context).pop();
        },
        child: Container(
          height: 25,
          width: 60,
          decoration: BoxDecoration(
              color: Color.fromRGBO(248, 244, 225, 1),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Icon(
            Icons.arrow_back,
            color: Colors.black87,
            size: 17,
          )),
        ),
      ),
    );
  }
}
