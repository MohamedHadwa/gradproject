import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsScreen extends StatelessWidget {
  final accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text('settings',style: TextStyle(
          color: Colors.brown
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Account'),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    controller: accountController,
                    decoration: InputDecoration(
                      hintText: 'Edit Account',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                          Icons.arrow_forward_ios_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 20.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'privacy',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                          Icons.arrow_forward_ios_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 20.0,
                ),
                child: Text('More'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 10.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: Colors.grey[200],
                  ),
                  child: TextFormField(
          
                    decoration: InputDecoration(
                      hintText: 'Language',
                      hintStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                          Icons.arrow_forward_ios_outlined),
                      border: OutlineInputBorder 
                      (
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  top: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.0),
                        color: Colors.brown,
                      ),
                      child: MaterialButton(
                        child: Text('LOG OUT',style: TextStyle(
                          color: Colors.white,
                        ),),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
