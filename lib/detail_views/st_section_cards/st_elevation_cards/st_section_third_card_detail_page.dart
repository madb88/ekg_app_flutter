import 'package:flutter/material.dart';
import '../../../customWidgets/flexible_row_normal_text.dart';
import '../../../customWidgets/list_builder.dart';

class StElevationThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  StElevationThirdCardDetailPage(this.sendedCard);

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
                    FlexibleRowNormalText(sendedCard['description'], 20.0, FontWeight.bold),
                    Divider(
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(sendedCard['subTitle'], 20.0, FontWeight.bold),
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
