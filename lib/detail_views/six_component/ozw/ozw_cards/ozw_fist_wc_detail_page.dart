import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../customWidgets/info_container.dart';
import '../../../../customWidgets/list_builder.dart';

class OzwFirstWcDetailPage extends StatelessWidget {
  final category;
  final cardNumber;

  OzwFirstWcDetailPage(this.category, this.cardNumber);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text('Zawał prawej komory'),
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
                                  newItem[cardNumber]['subText'],
                                  style: TextStyle(fontSize: 18.0),
                                  textAlign: TextAlign.justify,
                                ),
                                ListBuilder(newItem[cardNumber]['list']),
                                Divider(color: Colors.white),
                                InfoContainer(
                                    Colors.red[900],
                                    Colors.red[100],
                                    newItem[cardNumber]['redInfo'],
                                    18.0,
                                    false,
                                    FontWeight.normal),
                                Divider(
                                  color: Colors.white,
                                ),
                                InfoContainer(
                                    Colors.yellow[900],
                                    Colors.yellow[100],
                                    newItem[cardNumber]['infoHead'],
                                    18.0,
                                    false,
                                    FontWeight.normal),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: Colors.yellow[900],
                                            width: 5.0)),
                                    color: Colors.yellow[100],
                                  ),
                                  child: ListBuilder(
                                      newItem[cardNumber]['listInfo']),
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
