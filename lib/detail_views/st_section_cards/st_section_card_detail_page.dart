import 'package:flutter/material.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/list_builder.dart';

class StSectionCardDetailPage extends StatelessWidget {
  final sendedCard;

  StSectionCardDetailPage(this.sendedCard);

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
                    ListBuilder(sendedCard['list']),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoText'], 20.0, false, FontWeight.normal),
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
