import 'package:flutter/material.dart';

class AskMe extends StatelessWidget {
  const AskMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About Me'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.check),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0x1F9C9B9B),
            borderRadius: BorderRadius.circular(18),
          ),
          child: TextFormField(
            minLines: 50,
            maxLines: 500,
          ),
        ),
      ),
    );
  }
}
