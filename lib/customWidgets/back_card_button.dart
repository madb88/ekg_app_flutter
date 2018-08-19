import 'package:flutter/material.dart';

class BackCardButton extends StatelessWidget {
  final buttonText;
//
  BackCardButton(
      this.buttonText
      );

  @override
  Widget build(BuildContext context) {
    Row backCardButton = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        new InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: new Container(
            height: 50.0,
            width: 150.0,
            decoration: new BoxDecoration(
              color: Colors.blue[900],
              border: new Border.all(color: Colors.white),
              borderRadius: new BorderRadius.circular(10.0),
            ),
            child: new Center(
              child: new Text(
                buttonText,
                style: new TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
    return backCardButton;
  }
}
