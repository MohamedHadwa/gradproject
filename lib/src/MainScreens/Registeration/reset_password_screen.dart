import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/register_secure_text_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
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
            Center(
              child: Container(
                child: ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Change Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'cairo'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RegisterSecureTextField(
                      icon: Icons.lock,
                      label: "Password",
                      onChange: (v) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RegisterSecureTextField(
                      icon: Icons.lock,
                      label: "Conferm Password",
                      onChange: (v) {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: CustomBtn(
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
                        },
                        color: Theme.of(context).primaryColor,
                        text: 'Save',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
