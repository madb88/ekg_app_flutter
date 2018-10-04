import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/normal_text.dart';

class SecondNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  SecondNestedCardDetailPage(this.sendedCard);

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
                    Visibility(
                      child: InfoContainer(
                          Colors.red[900],
                          Colors.red[100],
                          sendedCard['infoHead2'],
                          18.0,
                          false,
                          FontWeight.bold),
                      visible: sendedCard['infoHead2'] != "" ? true : false,
                    ),
                    Visibility(
                      child: InfoContainer(
                          Colors.red[900],
                          Colors.red[100],
                          sendedCard['infoText2'],
                          18.0,
                          false,
                          FontWeight.normal),
                      visible: sendedCard['infoText2'] != "" ? true : false,
                    ),
                    Divider(color: Colors.white),

                    Visibility(
                      child: InfoContainer(
                          Colors.yellow[900],
                          Colors.yellow[100],
                          sendedCard['infoHead'],
                          18.0,
                          false,
                          FontWeight.normal),
                      visible: sendedCard['infoHead'] != "" ? true : false,
                    ),
                    Visibility(
                      child: InfoContainer(
                          Colors.yellow[900],
                          Colors.yellow[100],
                          sendedCard['infoText'],
                          18.0,
                          false,
                          FontWeight.normal),
                      visible: sendedCard['infoText'] != "" ? true : false,
                    )
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
