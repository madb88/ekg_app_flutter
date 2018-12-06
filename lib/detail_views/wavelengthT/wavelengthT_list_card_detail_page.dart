import 'package:flutter/material.dart';

import '../../customWidgets/list_builder.dart';
import '../../customWidgets/normal_text.dart';

class WavelengthTListCardDetailPage extends StatelessWidget {
  final sendedCard;

  WavelengthTListCardDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text(sendedCard['title']),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              sendedCard['listHead4'],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ]),
                      visible: sendedCard['listHead4'] != '' ? true : false,
                    ),
                    sendedCard['listHead'] != null
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                  child: NormalText(
                                      sendedCard['listHead'], FontWeight.bold)),
                            ],
                          )
                        : Container(),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.white),
                    sendedCard['description'] != null
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                  child: NormalText(sendedCard['description'],
                                      FontWeight.bold)),
                            ],
                          )
                        : Container(),
                    Visibility(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Divider(color: Colors.blue[900]),
                            Text(
                              sendedCard['listHead2'],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ]),
                      visible: sendedCard['listHead2'] != '' ? true : false,
                    ),
                    Visibility(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              sendedCard['listHead3'],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          ]),
                      visible: sendedCard['listHead3'] != '' ? true : false,
                    ),
                    Visibility(
                      child: ListBuilder(sendedCard['newList']),
                      visible: sendedCard['newList'] != '' ? true : false,
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
