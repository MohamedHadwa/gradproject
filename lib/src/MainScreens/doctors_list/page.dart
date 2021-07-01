import 'package:flutter/material.dart';

class DoctorsListPage extends StatelessWidget {
  const DoctorsListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headLine1 = Theme.of(context).textTheme.headline1;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/doctors_avatar.png',
              ),
              Center(
                child: Text(
                  'Ask Your \n Doctor',
                  style: headLine1.copyWith(fontSize: headLine1.fontSize * 1.8),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (_, i) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(i % 2 == 1 ? 'assets/images/doctor_1.jpg' : 'assets/images/doctor_2.jpg'),
                      title: Text(
                        'Dr. $i name',
                        style: TextStyle(fontSize: 18),
                      ),
                      subtitle: Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          (i + 1).toString(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
