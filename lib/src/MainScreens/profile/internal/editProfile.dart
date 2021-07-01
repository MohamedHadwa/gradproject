import 'dart:io';
import 'package:flutter/material.dart';
import 'package:gradproject/src/Helpers/Widgets/ImagePicker/image_picker_handler.dart';
import 'package:gradproject/src/MainWidgets/cachedImg.dart';
import 'package:gradproject/src/MainWidgets/customBtn.dart';
import 'package:gradproject/src/MainWidgets/defaultAppbar.dart';
import 'package:gradproject/src/MainWidgets/register_text_field.dart';
import 'editPassword.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile>
    with TickerProviderStateMixin, ImagePickerListener {
  File _image;

  AnimationController _controller;
  ImagePickerHandler imagePicker;

  @override
  void initState() {
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    imagePicker = new ImagePickerHandler(
        this, _controller, Color.fromRGBO(12, 169, 149, 1));
    imagePicker.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
       appBar: defaultAppBar(
        context: context,
        title: "Profile",
        hasBack: true,
        onPress: () {
          Navigator.pop(context);
        },
      ),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        InkWell(
                          onTap: () => imagePicker.showDialog(context),
                          child: _image == null
                              ? ChachedImg(
                                  imag: "null",
                                )
                              : Container(
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage:
                                        Image.file(_image).image,
                                  ),
                                ),
                        ),
                        Positioned(
                          bottom: 5,
                          right: 10,
                          child: InkWell(
                            onTap: () => imagePicker.showDialog(context),
                            child: CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 15,
                              ),
                              radius: 10,
                              backgroundColor: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RegisterTextField(
                  icon: Icons.person,
                  onChange: (v) {},
                  init: "name",
                  label: "name",
                  type: TextInputType.text,
                  edit: true,
                ),
                SizedBox(height: 20),
                RegisterTextField(
                  icon: Icons.mail,
                  onChange: (v) {},
                  init: "email",
                  label: 'email',
                  type: TextInputType.text,
                  edit: true,
                ),
                SizedBox(height: 10),
                CustomBtn(
                  txtColor: Colors.white,
                  width: 100,
                  onTap: () {},
                  heigh: 45,
                  color: Theme.of(context).primaryColor,
                  text: "Save",
                ),
                SizedBox(height: 10),
                RegisterTextField(
                  hint: 'phone',
                  icon: Icons.phone,
                  onChange: (v) {},
                  init: "0100009789",
                ),
                SizedBox(
                  height: 10,
                ),
                CustomBtn(
                  txtColor: Colors.white,
                  onTap: () {},
                  heigh: 45,
                  width: 100,
                  color: Theme.of(context).primaryColor,
                  text: 'Save',
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            EditPassword()
          ],
        ),
      ),
    );
  }

  @override
  userImage(File _image) {
    setState(() {
      this._image = _image;
    });
  }
}
