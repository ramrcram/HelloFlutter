import 'dart:async';
import 'dart:convert';
import 'package:helloflutter/Models/Books.dart';
import 'package:http/http.dart' as http;

const BookListUrl = "https://jsonplaceholder.typicode.com";

class ApiNetworking{

  //   Future<List<Book>> fetchBooks()  async => http.get('https://www.googleapis.com/books/v1/volumes?q=title:book').then((response) { 
  //       Iterable list = json.decode(response.body);
  //       var booklist = list.map((model) => Book.fromJson(model)).toList();
  //       return booklist;
  //     });

  // static Future getBookList() {
  //   var url = BookListUrl;
  //   return http.get(url);
  // }


Future<Stream<Books>> fetchBooks() async {
  final String url = 'https://www.googleapis.com/books/v1/volumes?q=title:book';

  final client = new http.Client();
  final streamedRest = await client.send(
      http.Request('get', Uri.parse(url))
  );

  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      // .expand((data) => (data))
      .map((data) => Books.fromJson(data));
}

}