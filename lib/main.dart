import 'package:flutter/material.dart';
import 'Widgets/HomeActionButton.dart';
import 'package:helloflutter/Screen/SecondScreen.dart';
import 'package:helloflutter/Screen/FirebaseScreen.dart';

void main() => runApp(RadioApp());

class RadioApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hello Flutter"),
      ),
      body: new Center(
        child : new Row(
          children: <Widget>[
            new HomeActionButton(onPressed: (){
                Navigator.push(context,new MaterialPageRoute(builder: (context) => new SecondSreen()));
              },buttonText: "Books"),
              new HomeActionButton(onPressed: (){
                Navigator.push(context,new MaterialPageRoute(builder: (context) => new FirebaseScreen()));
              },buttonText: "2")
            ],
        )
      ),
    );
  }
}