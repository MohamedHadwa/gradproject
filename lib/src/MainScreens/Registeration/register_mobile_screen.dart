import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/image_bg.dart';
import 'package:gradproject/src/MainWidgets/register_text_field.dart';
import '../../Provider/auth/registerMobileProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'confirmCode.dart';

class RegisterMobileScreen extends StatefulWidget {
  @override
  _RegisterMobileScreenState createState() => _RegisterMobileScreenState();
}

class _RegisterMobileScreenState extends State<RegisterMobileScreen> {
  final _form = GlobalKey<FormState>();
  bool autoError = false;
  @override
  Widget build(BuildContext context) {
    var register = Provider.of<RegisterMobileProvider>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _form,
        autovalidateMode:
            autoError ? AutovalidateMode.always : AutovalidateMode.disabled,
        child: Stack(
          children: <Widget>[
            ImageBG(),
            ListView(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              children: <Widget>[
                Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height * .9,
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                            child: Text(
                          "تسجيل جديد",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        )),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                            child: Text(
                          "فضلا قم بادخال رقم جوالك ليصلك كود التفعيل",
                          style: TextStyle(color: Colors.black87, fontSize: 13),
                          textAlign: TextAlign.center,
                        )),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        RegisterTextField(
                          hint: 'رقم الجوال',
                          icon: Icons.phone,
                          onChange: (v) {
                            register.phone = v;
                          },
                          edit: false,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CustomBtn(
                          txtColor: Colors.white,
                          heigh: 45,
                          onTap: () {
                            setState(() {
                              autoError = true;
                            });
                            final isValid = _form.currentState.validate();
                            if (!isValid) {
                              return;
                            }
                            _form.currentState.save();
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => ConfirmCode(
                                      stateOfVerificationCode: 1,
                                    )));
                          },
                          color: Theme.of(context).primaryColor,
                          text: 'التالي',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 40,
              left: 20,
              child: IconButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
