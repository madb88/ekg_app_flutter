import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'drain_view_controller.dart';
import 'package:ekg_cards_app/customRoute.dart';

class DrainCardList extends StatelessWidget {
  final category;
  final categoryName;
  DrainCardList(this.category, this.categoryName);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: new Text(category),
        
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/$categoryName.json'),
                builder: (context, snapshot) {
                  var newItem = json.decode(snapshot.data.toString());
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: Border.all(color: Colors.blue[900]),
                        elevation: 2.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new ListTile(
                              onTap: () {
                                Navigator.push(
                                  context,
                                   MyCustomRoute(
                                      builder: (context) => DrainViewController(index, newItem)),
                                );
                              },
                              trailing: Icon(Icons.description, color: Colors.blue[900]),
                              title: Text(
                                newItem[index]['title'],
                                style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                              ), // ...
                            ),
                             Divider(
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
            )
          ],
        ),
      ),
    );
  }
}
