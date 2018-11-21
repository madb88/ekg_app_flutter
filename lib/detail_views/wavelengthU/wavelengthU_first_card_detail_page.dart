import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/list_builder.dart';

class WavelengthUFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  WavelengthUFirstCardDetailPage(this.sendedCard);

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
                        : Container()
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
