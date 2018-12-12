import 'package:flutter/material.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';

class SecondComponentSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  SecondComponentSecondCardDetailPage(
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
                    Container(
                    padding: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.yellow[900], width: 5.0)),
                      color:  Colors.yellow[100],
                    ),
                    child:
                        Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                    child: NormalText(
                                        sendedCard['listHead'], FontWeight.bold)),
                              ],
                            ),
                            ListBuilder(sendedCard['secondList']),
                            Divider(height: 10.0, color: Colors.yellow[100]),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                    child: NormalText(
                                        sendedCard['description'], FontWeight.bold)),
                              ],
                            ),
                            ListBuilder(sendedCard['thirdList']),
                          ],
                        ),
                    ),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.red[900],Colors.red[100],sendedCard['infoExtraContainer'],18.0,false,FontWeight.bold),
                    InfoContainer(Colors.red[900],Colors.red[100],sendedCard['infoExtraContainerText'],18.0,false,FontWeight.normal),

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
