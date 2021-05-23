import 'package:gradproject/src/MainScreens/mainPage.dart';
import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/register_secure_text_field.dart';
import 'package:gradproject/src/MainWidgets/register_text_field.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Provider/auth/loginProvider.dart';
import 'forgetPassword.dart';
import 'widget/backBtn.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  void initState() {
    super.initState();
    _fcm.getToken().then((response) {
      setState(() {
        _deviceToken = response;
      });
      print('The device Token is :' + _deviceToken);
    });
  }

  FirebaseMessaging _fcm = FirebaseMessaging();
  String _deviceToken;
  final _form = GlobalKey<FormState>();
  bool autoError = false;

  @override
  Widget build(BuildContext context) {
    var loginProvider = Provider.of<LoginProvider>(context, listen: false);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Form(
          key: _form,
          autovalidateMode:
              autoError ? AutovalidateMode.always : AutovalidateMode.disabled,
          child: Stack(
            children: [
              Container(
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
                    RegisterTextField(
                      hint: 'Name',
                      icon: Icons.phone,
                      onChange: (v) {
                        loginProvider.phone = v;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RegisterSecureTextField(
                      icon: Icons.lock,
                      hint: "Password",
                      onChange: (v) {
                        loginProvider.password = v;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ForgetPassword()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Forgot password?',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10)),
                          ],
                        ),
                      ),
                    ),
                    CustomBtn(
                      txtColor: Colors.white,
                      heigh: 45,
                      padding: 0,
                      width: 137,
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => MainPage()));
                      },
                      color: Color.fromRGBO(137, 120, 83, 1),
                      text: 'LOG IN',
                    ),
                    SizedBox(
                      height: 70,
                    ),
                  ],
                ),
              ),
              BackBtn()
            ],
          ),
        ));
  }
}
