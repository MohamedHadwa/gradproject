import 'package:flutter/material.dart';
import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/register_secure_text_field.dart';

class EditPassword extends StatefulWidget {
  @override
  _EditPasswordState createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[
            RegisterSecureTextField(
              icon: Icons.lock,
              label: "Old Password",
              onChange: (v) {},
            ),
            SizedBox(height: 20),
            RegisterSecureTextField(
              icon: Icons.lock,
              label: 'Password',
              onChange: (v) {},
            ),
            SizedBox(height: 20),
            RegisterSecureTextField(
              icon: Icons.lock,
              label: 'Password Confirmation',
              onChange: (v) {},
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomBtn(
                txtColor: Colors.white,
                onTap: () {},
                heigh: 45,
                color: Theme.of(context).primaryColor,
                text: 'Save',
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
