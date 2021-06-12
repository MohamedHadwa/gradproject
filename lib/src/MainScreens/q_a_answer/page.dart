import 'package:flutter/material.dart';

class QandAnswer extends StatelessWidget {
  const QandAnswer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('QA'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your ask', style: Theme.of(context).textTheme.headline6),
            Expanded(
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
            SizedBox(
              height: 20,
            ),
            Text('Tha answer', style: Theme.of(context).textTheme.headline6),
            Expanded(
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
          ],
        ),
      ),
    );
  }
}
