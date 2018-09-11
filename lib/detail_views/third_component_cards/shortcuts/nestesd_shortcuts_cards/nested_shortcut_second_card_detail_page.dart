import 'package:flutter/material.dart';
import '../../../../customWidgets/back_card_button.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/normal_text.dart';
import '../../../../customWidgets/info_container.dart';

class NestedShortcutsSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  NestedShortcutsSecondCardDetailPage(this.sendedCard);

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
                    Divider(
                      color: Colors.white
                    ),
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
