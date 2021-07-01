import 'package:gradproject/src/MainWidgets/image_bg.dart';
import 'package:gradproject/src/Repository/appLocalization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';
import 'SignUpUsers.dart';

class ConfirmCode extends StatefulWidget {
  final String phoneNumber;
  final int stateOfVerificationCode;

  const ConfirmCode({Key key, this.phoneNumber, this.stateOfVerificationCode})
      : super(key: key);

  @override
  _ConfirmCodeState createState() => _ConfirmCodeState();
}

class _ConfirmCodeState extends State<ConfirmCode> {
  @override
  void initState() {
    super.initState();
  }

  bool resend = false;
  int timer = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          ImageBG(),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: <Widget>[
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * .9,
                  width: MediaQuery.of(context).size.width - 100,
                  alignment: Alignment.center,
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 100),
                        Center(
                            child: Text(
                          "تسجيل جديد",
                          style: TextStyle(color: Colors.black87, fontSize: 20),
                        )),
                        SizedBox(
                          height: 10,
                        ),
                        Center(
                            child: Text(
                          "ادخل كود التفعيل المرسل اليك",
                          style: TextStyle(color: Colors.black87, fontSize: 13),
                          textAlign: TextAlign.center,
                        )),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 30),
                          child: Center(
                            child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              backgroundColor: Color(0x00000000),
                              textStyle: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme(
                                activeColor: Theme.of(context).primaryColor,
                                selectedColor: Theme.of(context).accentColor,
                                inactiveColor: Theme.of(context).accentColor,
                              ),
                              onChanged: (code) {},
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              autoFocus: true,
                              onCompleted: (String value) {
                                if (widget.stateOfVerificationCode == 1)
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => SignUpUsers()));
                              },
                            ),
                          ),
                        ),
                        Visibility(
                          visible: resend,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                  child: new Text(
                                    localization.text("resend_code"),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 13,
                                        fontFamily: 'cairo',
                                        fontWeight: FontWeight.w400),
                                  ),
                                  onTap: () {}),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                localization.text("send_code"),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'cairo',
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        resend == true
                            ? Container()
                            : Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                textDirection: TextDirection.rtl,
                                children: <Widget>[
                                  Text(localization.text("confirm_code")),
                                  SizedBox(height: 10),
                                  Center(
                                    child: SlideCountdownClock(
                                      duration: Duration(minutes: timer),
                                      slideDirection: SlideDirection.Down,
                                      tightLabel: true,
                                      onDone: () {
                                        setState(() {
                                          resend = true;
                                        });
                                      },
                                      separator: ":",
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                        SizedBox(height: 20),
                        SizedBox(height: 20),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 40,
            left: 20,
            child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(Icons.arrow_back, color: Colors.black87)),
          ),
        ],
      ),
    );
  }
}
