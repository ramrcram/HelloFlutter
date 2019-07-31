
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeActionButton extends StatefulWidget {
  final GestureTapCallback onPressed;
  final String buttonText;
  HomeActionButton({ Key key, this.onPressed, this.buttonText = ""}) : super(key: key);
  _HomeActionButtonState createState() => _HomeActionButtonState();
}

class _HomeActionButtonState extends State<HomeActionButton> {
  @override
  Widget build(BuildContext context) {
        return RawMaterialButton(
          fillColor: Colors.green,
          splashColor: Colors.greenAccent,
          shape: new CircleBorder(),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  width: 100.0,
                  height: 100.0,
                  child: Center(
                    child: Text(
                    widget.buttonText,
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:FontWeight.bold,
                      fontSize: 20.0),
                  ),
                  )
              )]
            ),
        ),
      onPressed: widget.onPressed
    );
  }
}
