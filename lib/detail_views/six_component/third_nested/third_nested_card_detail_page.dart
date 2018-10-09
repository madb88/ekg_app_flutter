import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/normal_text.dart';

class ThirdNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  ThirdNestedCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          NormalText(sendedCard['head'], FontWeight.normal),
                          Divider(color: Colors.white),
                          ListBuilder(sendedCard['list']),
                        ],
                      ),
                      visible: sendedCard['list'] != "" ? true : false,
                    ),
                    Divider(color: Colors.white),
                    Visibility(
                      child: InfoContainer(
                          Colors.yellow[900],
                          Colors.yellow[100],
                          sendedCard['infoHead'],
                          18.0,
                          false,
                          FontWeight.bold),
                      visible: sendedCard['infoHead'] != "" ? true : false,
                    ),
                    Visibility(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.yellow[900], width: 5.0)),
                          color: Colors.yellow[100],
                        ),
                        child: ListBuilder(sendedCard['infoList']),
                      ),
                      visible: sendedCard['infoList'] != "" ? true : false,
                    ),
                    Visibility(
                      child: Text(sendedCard['text'],
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      visible: sendedCard['text'] != "" ? true : false,
                    ),
                    Divider(color: Colors.white),
                    Visibility(
                      child: ListBuilder(sendedCard['list2']),
                      visible: sendedCard['list2'] != "" ? true : false,
                    )
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
