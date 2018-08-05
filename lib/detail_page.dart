import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {
  final sendedCard;

  DetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        sendedCard['description'],
        style: new TextStyle(fontSize: 20.0),
        textAlign: TextAlign.justify,
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new RaisedButton(
            child: const Text('BACK'),
            color: Colors.white,
            elevation: 4.0,
            splashColor: Colors.blueGrey,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );

    return new Scaffold(
        appBar: new AppBar(
          title: new Text(sendedCard['title']),
        ),
        body: ListView(
          children: <Widget>[
            descriptionSection,
            buttonSection,
          ],
        ));
  }
}