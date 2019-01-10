import 'package:flutter/material.dart';
import '../../customWidgets/info_container.dart';

class SixComponentSpecialCardDetailPage extends StatelessWidget {
  final sendedCard;

  SixComponentSpecialCardDetailPage(this.sendedCard);

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
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead1'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText1'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead1'] != "" || sendedCard['infoHeadText1'] != ''? true : false,
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead2'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText2'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead2'] != "" || sendedCard['infoHeadText2'] != ''? true : false,
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead3'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText3'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead3'] != "" || sendedCard['infoHeadText3'] != ''? true : false,
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead4'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText4'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead4'] != "" || sendedCard['infoHeadText4'] != ''? true : false,
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead5'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText5'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead5'] != "" || sendedCard['infoHeadText5'] != ''? true : false,
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead6'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText6'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead6'] != "" || sendedCard['infoHeadText6'] != ''? true : false,
                    ),
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[100],
                              sendedCard['infoHead7'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.blue[900],
                              Colors.blue[50],
                              sendedCard['infoHeadText7'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoHead7'] != "" || sendedCard['infoHeadText7'] != ''? true : false,
                    ),
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
