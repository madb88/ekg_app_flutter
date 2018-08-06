import 'package:flutter/material.dart';
import './detail_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return child;
    // return new FadeTransition(opacity: animation, child: child);
  }
}

class CardList extends StatelessWidget {
  final category;
  final categoryNumber;
  CardList(this.category, this.categoryNumber);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(category)),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // new FutureBuilder(
            //   future: DefaultAssetBundle
            //   .of(context)
            //   .loadString('data_repo/category1.json'),
            //   builder: (context, snapshot) {
                // var newItem = JSON.decode(snapshot.data.toString());
                // print(newItem);
                // return new ListView.builder(
                //   itemBuilder: (BuildContext context, int index){
                //     return new Card(
                //       child: new Column(
                //         crossAxisAlignment: CrossAxisAlignment.stretch,
                //         children: <Widget>[
                //           new ListTile(
                //             onTap: () {
                //               final sendedCard = newItem;
                //               Navigator.push(
                //                 context,
                //                 new MyCustomRoute(
                //                     builder: (context) =>
                //                         new DetailPage(sendedCard)),
                //               );
                //             },
                //             title: new Text(
                //               newItem[index]['title'],
                //               style: new TextStyle(fontWeight: FontWeight.bold),
                //             ), // ...
                //           ),
                //           new Divider(
                //             height: 2.0,
                //           ),
                //       ],
                //       ), 
                //       );
                //   },
                //   itemCount: newItem == null ? 0 : newItem.length,

                // );
              // },
            // ),
            new Expanded(
              child: new StreamBuilder<QuerySnapshot>(
                stream: Firestore.instance
                    .collection('cards')
                    .where("category", isEqualTo: categoryNumber)
                    .orderBy('title', descending: false)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData)
                    return new Align(
                      child: CircularProgressIndicator(),
                    );
                  return new ListView(
                    children: snapshot.data.documents
                        .map((DocumentSnapshot document) {
                      return new Column(
                        children: <Widget>[
                          new ListTile(
                            onTap: () {
                              final sendedCard = document;
                              Navigator.push(
                                context,
                                new MyCustomRoute(
                                    builder: (context) =>
                                        new DetailPage(sendedCard)),
                              );
                            },
                            title: new Text(
                              document['title'],
                              style: new TextStyle(fontWeight: FontWeight.bold),
                            ), // ...
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
            new Column(
              children: <Widget>[
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
                        style:
                            new TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
