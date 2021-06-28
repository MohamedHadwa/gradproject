import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.brown),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              child: Image(
                image: AssetImage('assets/images/doctor_1.jpg'),
              ),
              radius: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green[200],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 15.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'name',
                      labelStyle: TextStyle(
                        color: Colors.brown,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20.0,
                end: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green[200],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 15.0,
                  ),
                  child: TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      labelText: 'Bio',
                      labelStyle: TextStyle(
                        color: Colors.brown,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green[200],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 15.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Location',
                      labelStyle: TextStyle(
                        color: Colors.brown,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green[200],
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 15.0,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Website',
                      labelStyle: TextStyle(
                        color: Colors.brown,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'cancel',
                          style: TextStyle(
                            color: Colors.brown,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'save',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
