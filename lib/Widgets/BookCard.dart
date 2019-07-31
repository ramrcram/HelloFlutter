import 'package:flutter/material.dart';
import '../Models/Books.dart';

class BookCard extends StatelessWidget {
  final Book _book;
  BookCard(this._book);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(_book.volumeInfo.title)
      ),
      Divider()
    ],
  );
}