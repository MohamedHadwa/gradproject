import 'package:gradproject/src/MainScreens/Registeration/reset_password_screen.dart';
import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/register_text_field.dart';
import 'package:flutter/material.dart';
import 'widget/backBtn.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {

  final _form = GlobalKey<FormState>();
  bool autoError = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _form,
        autovalidateMode:
            autoError ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                      child: Text(
                    "Please Enter Your Mail",
                    style: TextStyle(color: Colors.black87, fontSize: 20),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Text(
                    "For Reset Password",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  )),
                  SizedBox(
                    height: 50,
                  ),
                  RegisterTextField(
                    hint: 'Mail',
                    type: TextInputType.emailAddress,
                    icon: Icons.phone,
                    onChange: (v) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomBtn(
                    txtColor: Colors.white,
                    heigh: 45,
                    width: 137,
                    onTap: () {
                      setState(() {
                        autoError = true;
                      });
                      final isValid = _form.currentState.validate();
                      if (!isValid) {
                        return;
                      }
                      _form.currentState.save();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ResetPasswordScreen()));
                    },
                    color: Theme.of(context).primaryColor,
                    text: 'Send Code',
                  ),
                ],
              ),
            ),
            BackBtn()
          ],
        ),
      ),
    );
  }
}
