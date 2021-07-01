import 'package:gradproject/src/Repository/appLocalization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOptionCard {
  Widget optionCard(
      {String label,
      String content,
      final icon,
      Function onTap,
      BuildContext context}) {
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.grey[600]),
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: onTap != null,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      ),
                    ),
                    Text(
                      content ?? "",
                      textAlign: TextAlign.start,
                      style: TextStyle(color: Colors.black87, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      label,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.black87, fontSize: 17),
                    ),
                  ),
                  Visibility(
                    visible: icon != null,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 8),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Image.asset(icon),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget optionCard2({String txt, IconData icon, Function onTap, Color color}) {
    return Directionality(
      textDirection: localization.currentLanguage.toString() == "en"
          ? TextDirection.ltr
          : TextDirection.rtl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 47,
            child: ListTile(
              leading: Icon(icon),
              title: Text(
                txt,
                style: TextStyle(
                    color: color == null ? Colors.black : color, fontSize: 17),
              ),
              trailing: Directionality(
                textDirection: localization.currentLanguage.toString() == "en"
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: color == null ? Colors.grey : color,
                  size: 20,
                ),
              ),
              onTap: onTap,
            ),
          ),
          Divider(
            height: 1,
          )
        ],
      ),
    );
  }
}
