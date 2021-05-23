import 'package:gradproject/src/MainScreens/Registeration/SignUpUsers.dart';
import 'package:gradproject/src/MainScreens/Registeration/sign_in_screen.dart';
import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/photos/login.jpg",
                ),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CustomBtn(
                txtColor: Color.fromRGBO(137, 120, 83, 1),
                heigh: 45,
                width: 242,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignUpUsers()));
                },
                color: Theme.of(context).primaryColor,
                text: 'creat an account',
                fontSize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              // InkWell(
              //   onTap: () {
              //     Navigator.of(context).push(
              //         MaterialPageRoute(builder: (_) => Re()));
              //   },
              //   child: Text('Have an account already?',
              //       style: TextStyle(color: Colors.black, fontSize: 10)),
              // ),
              SizedBox(
                height: 20,
              ),
              CustomBtn(
                txtColor: Color.fromRGBO(137, 120, 83, 1),
                heigh: 45,
                padding: 0,
                width: 137,
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignInScreen()));
                },
                color: Theme.of(context).primaryColor,
                text: 'LOG IN',
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ));
  }
}
