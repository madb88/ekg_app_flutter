import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/flexible_row_normal_text.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/list_builder.dart';

class StLoweringSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  StLoweringSecondCardDetailPage(
      this.sendedCard
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
                    FlexibleRowNormalText(sendedCard['description'], 20.0, FontWeight.bold),
                    Divider(
                      color: Colors.white
                    ),
                    FlexibleRowNormalText(sendedCard['listHead'], 20.0, FontWeight.bold),
                    ListBuilder(sendedCard['list']),
                    Divider(
                        color: Colors.white
                    ),
                    sendedCard['infoBox'] != ''?InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoBox'], 20.0, false, FontWeight.bold):Container(),

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
