import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';

class SecondComponentFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  SecondComponentFirstCardDetailPage(
      this.sendedCard);

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
                    ListBuilder(sendedCard['list']),
                    Divider(height: 10.0, color: Colors.white),
                    sendedCard['infoBox'] != ''?InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoBox'], 20.0, false, FontWeight.normal):Container(),

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
