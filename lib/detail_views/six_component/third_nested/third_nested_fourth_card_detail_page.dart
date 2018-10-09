import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';


class ThirdNestedFourthCardDetailPage extends StatelessWidget {
  final sendedCard;

  ThirdNestedFourthCardDetailPage(this.sendedCard);

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
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.yellow[900],Colors.yellow[100], sendedCard['infoHead'], 18.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900],Colors.yellow[100], sendedCard['infoText'], 18.0, false, FontWeight.normal),
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
