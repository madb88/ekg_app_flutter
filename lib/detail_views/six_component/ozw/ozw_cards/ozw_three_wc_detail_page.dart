import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/info_container.dart';

class OzwThreeWcDetailPage extends StatelessWidget {
  final category;
  final cardNumber;

  OzwThreeWcDetailPage(this.category, this.cardNumber);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text('Ewolucja zmian  podczas OZW'),
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
                                InfoContainer(Colors.blue[900], Colors.blue[100], newItem[cardNumber]['headOne'], 18.0, false, FontWeight.bold),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListTile(
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["firstListTile"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.normal)),
                                ),
                                Divider(
                                  color: Colors.white,
                                ),
                                InfoContainer(Colors.blue[900], Colors.blue[100], newItem[cardNumber]['headTwo'], 18.0, false, FontWeight.bold),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListBuilder(newItem[cardNumber]["secondList"]),
                                Divider(
                                  color: Colors.white,
                                ),
                                InfoContainer(Colors.blue[900], Colors.blue[100], newItem[cardNumber]['headThree'], 18.0, false, FontWeight.bold),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListBuilder(newItem[cardNumber]["thirdList"]),
                                Divider(
                                  color: Colors.white,
                                ),
                                InfoContainer(Colors.blue[900], Colors.blue[100], newItem[cardNumber]['headFourth'], 18.0, false, FontWeight.bold),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListBuilder(newItem[cardNumber]["fourthList"]),
                                Divider(
                                  color: Colors.white,
                                ),
                                InfoContainer(Colors.blue[900], Colors.blue[100], newItem[cardNumber]['headFive'], 18.0, false, FontWeight.bold),
                                Divider(
                                  color: Colors.white,
                                ),
                                ListTile(
                                  leading: Icon(Icons.chevron_right),
                                  title: Text(newItem[cardNumber]["fiveListTile"],
                                      style: TextStyle(
                                          fontSize: 20.0, fontWeight: FontWeight.normal)),
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
