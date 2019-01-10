import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'other_concepts_view_controller.dart';
import 'package:ekg_cards_app/customRoute.dart';

class OtherConceptsCardList extends StatelessWidget {
  final category;
  final categoryName;
  OtherConceptsCardList(this.category, this.categoryName);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text(category),
        
      ),
      body: new Container(

        padding: const EdgeInsets.all(5.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(

              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/$categoryName.json'),
                builder: (context, snapshot) {
                  var newItem = json.decode(snapshot.data.toString());
                  return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        shape: Border.all(color: Colors.blue[900]),
                        elevation: 2.0,
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new ListTile(
                              onTap: () {
                                final sendedCard = newItem;
                                Navigator.push(
                                  context,
                                  new MyCustomRoute(
                                      builder: (context) =>
                                          OtherConceptsViewController(index, sendedCard)),
                                );
                              },
                              trailing: Icon(Icons.description, color: Colors.blue[900]),
                              title: new Text(
                                newItem[index]['title'],
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                              ), // ...
                            ),
                            new Divider(
                              height: 2.0,
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: newItem == null ? 0 : newItem.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
