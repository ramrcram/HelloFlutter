import 'package:flutter/material.dart';
import 'package:helloflutter/Models/Books.dart';
import 'package:helloflutter/Networking/ApiNetworking.dart';
import '../Widgets/BookCard.dart';

class SecondSreen extends StatefulWidget {
  @override
  _SecondSreen createState() => _SecondSreen();
}

class _SecondSreen extends State<SecondSreen> {
  List<Book> _bookList = <Book>[];
  @override
  void initState() {
    super.initState();
    getBooks();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Books'),
    ),
    body: ListView.builder(
      itemCount: _bookList.length,
      itemBuilder: (context, index) => BookCard(_bookList[index]),
    ),
  );

  void getBooks() async {
    final Stream<Books> stream = await ApiNetworking().fetchBooks();
    stream.listen((Books books) =>
      setState(() =>  _bookList = books.books.toList())
    );
  }
}