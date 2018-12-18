import 'package:flutter/material.dart';

import '../../../../customWidgets/info_container.dart';
import '../../../../customWidgets/list_builder.dart';

class OzwSevenCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwSevenCardDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text(sendedCard['title']),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      child: Text(
                        sendedCard['text'],
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.justify,
                      ),
                      visible: sendedCard['text'] != '' ? true : false,
                    ),
                    Divider(),
                    ListBuilder(sendedCard['list']),
                    Divider(),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['infoHead'], 18.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['infoText'], 18.0, false, FontWeight.normal),
                    Divider(color: Colors.white),
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
