import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../customWidgets/nested_list_builder.dart';
import '../../../../customWidgets/info_container.dart';

class OzwFourthWcDetailPage extends StatelessWidget {
  final category;
  final cardNumber;

  OzwFourthWcDetailPage(this.category, this.cardNumber);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text('Dorzut Zawału'),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString('data_repo/ozw/ozw_cards.json'),
                      builder: (context, snapshot) {
                        if (snapshot.data == null) {
                          return Container(
                            child: Center(child: CircularProgressIndicator()),
                          );
                        } else {
                          var newItem = json.decode(snapshot.data.toString());
                          return Container(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Visibility(
                                  child: Text(
                                    newItem[cardNumber]['text'],
                                    style: TextStyle(fontSize: 20.0),
                                    textAlign: TextAlign.justify,
                                  ),
                                  visible: newItem[cardNumber]['text'] != ''
                                      ? true
                                      : false,
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListTile(
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["firstListTile"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                                ),
                                  NestedListBuilder(newItem[cardNumber]["nestedList"]),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListTile(
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["secondListTile"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                InfoContainer(Colors.red[900], Colors.red[100], newItem[cardNumber]['redText'], 18.0, false, FontWeight.bold),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ],
    ));
  }
}
