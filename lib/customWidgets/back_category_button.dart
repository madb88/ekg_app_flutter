import 'package:flutter/material.dart';

class BackCategoryButton extends StatelessWidget {
  final buttonText;
//
  BackCategoryButton(
      this.buttonText
      );

  @override
  Widget build(BuildContext context) {
    Container backCategoryButton = new Container(
      height: 50.0,
      child: new InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: new Container(
          height: 5.0,
          decoration: new BoxDecoration(
            color: Colors.blue[900],
            border: new Border.all(color: Colors.white, width: 2.0),
            borderRadius: new BorderRadius.circular(10.0),
          ),
          child: new Center(
            child: new Text(
              'Wróć',
              style: new TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
    return backCategoryButton;
  }
}
