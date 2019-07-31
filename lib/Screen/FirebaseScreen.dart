import 'package:flutter/material.dart';


class FirebaseScreen extends StatefulWidget {
  @override
  _FirebaseScreen createState() => _FirebaseScreen();
}

class _FirebaseScreen extends State<FirebaseScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text('Firebase Connect'),
    ),
    body: ListView.builder(),
  );

}