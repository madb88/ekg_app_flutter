import 'package:flutter/material.dart';
import './detail_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (settings.isInitialRoute)
      return child;
    return child;
    // return new FadeTransition(opacity: animation, child: child);
  }
}

class CardList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    body: new Column(
    children: <Widget>[
      new Expanded(
        child: new StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance
          .collection('cards')
          .orderBy('title', descending: false)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) return new Text('Loading...');
        return new ListView(
          padding: new EdgeInsets.all(16.0),
          children: snapshot.data.documents.map((DocumentSnapshot document) {
          
            return new Column(
              children: <Widget>[
                new ListTile(
                  onTap: () {
                    final sendedCard = document;
                    Navigator.push(
                      context,
                      new MyCustomRoute(
                          builder: (context) => new DetailPage(sendedCard)),
                    );
                  },
                  title: new Text(
                    document['title'],
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),                 // ... 
                ),
                
                new Divider(
                  height: 2.0,
                ),
              ],
            );
          }).toList(),
        );
      },
    ),
    ),
    ],
    ),
    );
  }
}