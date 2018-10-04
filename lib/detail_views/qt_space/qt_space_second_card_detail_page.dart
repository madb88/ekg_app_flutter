import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/list_builder.dart';

class QtSpaceSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  QtSpaceSecondCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(6.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ListBuilder(sendedCard['listOne']),
                    Divider(height: 10.0, color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['secondList'])
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
