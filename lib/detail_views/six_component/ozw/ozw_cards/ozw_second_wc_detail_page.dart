import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/nested_list_builder.dart';
import '../../../../customWidgets/info_container.dart';

class OzwSecondWcDetailPage extends StatelessWidget {
  final category;
  final cardNumber;

  OzwSecondWcDetailPage(this.category, this.cardNumber);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text('Ostry zespół wieńcowy w pobudzeniach przewiedzionych z blokiem śródkomorowym'),
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
                                    style: TextStyle(fontSize: 25.0),
                                    textAlign: TextAlign.left,
                                  ),
                                  visible: newItem[cardNumber]['text'] != ''
                                      ? true
                                      : false,
                                ),
                                Divider(),
                                Text(
                                  newItem[cardNumber]['text2'],
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.justify,
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListBuilder(newItem[cardNumber]["list"]),
                                InfoContainer(Colors.red[900],Colors.red[100],newItem[cardNumber]["listTileOne"],18.0,false,FontWeight.normal),
                                InfoContainer(Colors.red[900],Colors.red[100],newItem[cardNumber]["listTileTwo"],18.0,false,FontWeight.normal),
                                Divider(
                                  color: Colors.white
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(1.0),
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["listTileThree"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.normal)),
                                ),
                                Divider(),
                                Text(
                                  newItem[cardNumber]['text3'],
                                  style: TextStyle(fontSize: 25.0),
                                  textAlign: TextAlign.left,
                                ),
                                ListTile(
                                  contentPadding: EdgeInsets.all(1.0),
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["listTileFour"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.normal)),
                                ),
                                NestedListBuilder(newItem[cardNumber]['nestedList']),
                                ListTile(
                                  contentPadding: EdgeInsets.all(1.0),
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["listTileFive"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.normal)),
                                ),
                                Divider(),

                                Text(
                                  newItem[cardNumber]['additionalInfo'],
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(),
                                InfoContainer(Colors.red[900],Colors.red[100],newItem[cardNumber]["extraInfo"],18.0,false,FontWeight.normal),

                                Divider(color: Colors.white),
//
                                InfoContainer(
                                    Colors.yellow[900],
                                    Colors.yellow[100],
                                    newItem[cardNumber]['additionalInfo2'],
                                    18.0,
                                    false,
                                    FontWeight.bold),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.yellow[900],
                                            width: 5.0)),
                                    color: Colors.yellow[100],
                                  ),
                                  child: ListBuilder(
                                      newItem[cardNumber]['additionalInfoList']),
                                ),
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
