import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/custom_alert.dart';
import 'package:gradproject/src/MainWidgets/register_secure_text_field.dart';
import 'package:gradproject/src/MainWidgets/register_text_field.dart';
import 'package:gradproject/src/MainWidgets/terms_dialog.dart';
import 'package:gradproject/src/Provider/termsProvider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../mainPage.dart';
import 'widget/backBtn.dart';

class SignUpUsers extends StatefulWidget {
  @override
  _SignUpUsersState createState() => _SignUpUsersState();
}

class _SignUpUsersState extends State<SignUpUsers> {
  bool _accept = false;
  FirebaseMessaging _fcm = FirebaseMessaging.instance;
  String _deviceToken;
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    Provider.of<TermsProvider>(context, listen: false).getTerms();
    _fcm.getToken().then((response) {
      setState(() {
        _deviceToken = response;
      });
      print('The device Token is :' + _deviceToken);
    });
    super.initState();
  }

  bool city = false;
  final _form = GlobalKey<FormState>();
  bool autoError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _globalKey,
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _form,
        autovalidateMode:
            autoError ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(height: 40,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Your",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Account",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                RegisterTextField(
                  icon: Icons.person,
                  onChange: (v) {},
                  label: 'Name',
                  type: TextInputType.text,
                ),
                SizedBox(height: 20),
                RegisterTextField(
                  icon: Icons.mail,
                  onChange: (v) {},
                  label: 'Mail',
                  type: TextInputType.text,
                ),
                SizedBox(height: 20),
                RegisterTextField(
                  icon: Icons.phone,
                  onChange: (v) {},
                  label: 'Phone',
                  type: TextInputType.number,
                ),
                SizedBox(height: 20),
                RegisterSecureTextField(
                  onChange: (v) {},
                  label: "Password",
                  icon: Icons.lock,
                ),
                SizedBox(height: 20),
                RegisterSecureTextField(
                  onChange: (v) {},
                  icon: Icons.lock,
                  label: 'Confirm Password',
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  value: _accept,
                  onChanged: (value) {
                    setState(() {
                      _accept = !_accept;
                    });
                  },
                  activeColor: Theme.of(context).primaryColor,
                  checkColor: Colors.white,
                  dense: true,
                  title: InkWell(
                    onTap: () => TermsDialog().show(context: context),
                    child: Text(
                      'اوافق على الشروط والأحكام',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: CustomBtn(
                    txtColor: Colors.white,
                    heigh: 45,
                    width: 151,
                    onTap: () {
                      setState(() {
                        autoError = true;
                      });
                      final isValid = _form.currentState.validate();
                      if (!isValid) {
                        return;
                      }
                      _form.currentState.save();

                      if (_accept == false) {
                        CustomAlert().toast(
                            context: context,
                            title: 'يجب الموافقة على الشروط والأحكام');
                      } else {
                        _form.currentState.save();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => MainPage()));
                      }
                    },
                    color: Color.fromRGBO(137, 120, 83, 1),
                    text: 'JOUN US',
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
            BackBtn()
          ],
        ),
      ),
    );
  }
}
