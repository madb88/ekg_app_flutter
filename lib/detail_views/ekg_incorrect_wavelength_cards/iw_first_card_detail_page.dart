import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/list_builder.dart';

class IwFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  IwFirstCardDetailPage(this.sendedCard);

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
                        Flexible(
                            child: Text(sendedCard['subTitle'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(
                      height: 15.0,
                      color: Colors.white
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['textOne'], 19.0, false,FontWeight.normal)
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
