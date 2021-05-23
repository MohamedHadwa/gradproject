import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<dynamic> showDialogNotInternet(BuildContext context) {
  return showDialog(
      context: context,
      builder: (c) => CupertinoAlertDialog(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("  فشل الاتصال بالانترنت    "),
                  Icon(
                    Icons.warning,
                  ),
                ],
              ),
            ),
            content: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text("! من فضلك اعد الاتصال بالانترنت"),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: AppSettings.openWIFISettings,
                  child: Text("الاعدادات"))
            ],
          ));
}
