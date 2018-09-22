import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';


class FiveComponentFirstNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  FiveComponentFirstNestedCardDetailPage(
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
                    Container(
                      child:  Text(sendedCard['text'], style: TextStyle(fontSize: 25.0)),
                      padding: EdgeInsets.all(5.0),
                    ),
                    Divider(height: 15.0, color: Colors.white),
                    BackCardButton('Wróć'),
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
