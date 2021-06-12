import 'package:flutter/material.dart';
import 'package:gradproject/src/MainWidgets/customBtn.dart';

class FindYourAccount extends StatelessWidget {
  const FindYourAccount({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find your account'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Center(
                child: Text(
              'Enter your mail or phone number.',
              style: Theme.of(context).textTheme.headline6,
            )),
            Container(
              color: Color(0x1C9C9B9B),
              child: TextFormField(
                maxLines: 10,
                minLines: 5,
              ),
            ),
            SizedBox(height: 30),
            CustomBtn(
              txtColor: Colors.white,
              heigh: 45,
              padding: 0,
              width: 137,
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (_) => SignInScreen()));
              },
              color: Color(0xFF897853),
              text: 'SEARCH',
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
