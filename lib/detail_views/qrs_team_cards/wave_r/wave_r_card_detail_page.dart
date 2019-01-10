import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/list_builder.dart';

class WaveRCardDetailPage extends StatelessWidget {
  final sendedCard;

  WaveRCardDetailPage(
      this.sendedCard,
    );

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
                        Flexible(child: NormalText(sendedCard['description'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['list'])
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
