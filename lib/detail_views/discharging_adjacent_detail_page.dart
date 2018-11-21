import 'package:flutter/material.dart';
import '../customWidgets/normal_text.dart';
import '../customWidgets/list_builder.dart';

class DischargingAdjacentDetailPage extends StatelessWidget {
  final sendedCard;

  DischargingAdjacentDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['description'], FontWeight.normal),
                        )
                      ],
                    ),
                    Divider(
                      height: 25.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['subtitle1'], FontWeight.bold),
                        )
                      ],
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.white,
                    ),
                    ListBuilder(sendedCard['listOne']),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.blue[800], width: 5.0)),
                          color: Colors.blue[100],
                        ),
                        child: Column(children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                child: NormalText(
                                    sendedCard['subtitle2'], FontWeight.bold),
                              )
                            ],
                          ),
                          Divider(
                            height: 15.0,
                            color: Colors.blue[100],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                  child: NormalText(
                                      sendedCard['secondListElement1'],
                                      FontWeight.normal)),
                            ],
                          ),
                          Divider(
                            height: 15.0,
                            color: Colors.blue[100],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Flexible(
                                  child: NormalText(
                                      sendedCard['secondListElement2'],
                                      FontWeight.normal)),
                            ],
                          ),
                        ])),
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
