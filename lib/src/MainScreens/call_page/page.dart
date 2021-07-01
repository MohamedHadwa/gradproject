import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final headLine1 = Theme.of(context).textTheme.headline1;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/full_doctor.png',
                // height: size.height,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: size.height * .30,
              child: Text(
                'Dr.john',
                style: headLine1.copyWith(
                  fontSize: headLine1.fontSize * 2,
                ),
              ),
            ),
            Positioned(
              bottom: size.height * .20,
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.speaker,
                      color: Colors.black,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.call,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.videocam,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
