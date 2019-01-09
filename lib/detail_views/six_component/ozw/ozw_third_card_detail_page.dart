import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';

class OzwThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwThirdCardDetailPage(this.sendedCard);

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
                    Text(
                      sendedCard['text'],
                      style: TextStyle(fontSize: 25.0),
                      textAlign: TextAlign.justify,
                    ),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['infoHead2'], 18.0, false, FontWeight.bold),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: ListBuilder(sendedCard['list']),
                    ),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['infoHead'], 18.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['infoText'], 18.0, false, FontWeight.normal),
                    Divider(color: Colors.white),
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
