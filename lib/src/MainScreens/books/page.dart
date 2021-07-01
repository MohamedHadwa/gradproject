import 'package:flutter/material.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _books = <String>[
      'https://images-na.ssl-images-amazon.com/images/I/41b-mHfKY3L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51q45ABJM9L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51xy4s571hL._SX331_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/512mINOvLgL._SX328_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41vCVtcClbL._SX322_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41cQ1WV6i8L._SX311_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41M-DKan9yL._SX318_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41b-mHfKY3L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51q45ABJM9L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51xy4s571hL._SX331_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/512mINOvLgL._SX328_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41vCVtcClbL._SX322_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41cQ1WV6i8L._SX311_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41M-DKan9yL._SX318_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41b-mHfKY3L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51q45ABJM9L._SY291_BO1,204,203,200_QL40_FMwebp_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/51xy4s571hL._SX331_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/512mINOvLgL._SX328_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41vCVtcClbL._SX322_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41cQ1WV6i8L._SX311_BO1,204,203,200_.jpg',
      'https://images-na.ssl-images-amazon.com/images/I/41M-DKan9yL._SX318_BO1,204,203,200_.jpg',
    ];

    _books.shuffle();
    return Scaffold(
      appBar: AppBar(
        title: Text('books'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          // verticalDirection: VerticalDirection.up,
          alignment: WrapAlignment.center,

          children: _books
              .map(
                (e) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
                  child: Image.network(
                    e,
                    width: size.width * .27,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
