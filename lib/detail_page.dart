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
          new InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Container(
              width: 100.0,
              height: 50.0,
              decoration: new BoxDecoration(
                color: Colors.blueAccent,
                border: new Border.all(color: Colors.white, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Center(
                child: new Text(
                  'Back',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
          // new RaisedButton(
          //   child: const Text('BACK'),
          //   color: Colors.white,
          //   elevation: 4.0,
          //   splashColor: Colors.blueGrey,
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );

    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          title: new Text(sendedCard['title']),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return new Column(
                children: <Widget>[
                  descriptionSection,
                  new Divider(),
                  buttonSection
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    ));
  }
}
// descriptionSection,
//                   new Divider(),
//                 buttonSection,
