import 'package:flutter/material.dart';

import '../../customWidgets/image_widget.dart';
import '../../customWidgets/list_builder.dart';

class IwFourthCardDetailPage extends StatelessWidget {
  final sendedCard;

  IwFourthCardDetailPage(this.sendedCard);

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
                          Flexible(
                              child: Text(sendedCard['description'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0))),
                        ],
                      ),
                      visible: sendedCard['description'] != '' ? true : false,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['listHead'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list']),
                    Visibility(
                      child: ImageWidget(sendedCard['image']),
                      visible: sendedCard['image'] != '' ? true : false,
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
