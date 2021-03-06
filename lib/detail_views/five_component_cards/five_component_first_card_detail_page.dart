import 'package:flutter/material.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/normal_text.dart';

class FiveComponentFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  FiveComponentFirstCardDetailPage(
      this.sendedCard);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          elevation: 0.0,
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
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child: NormalText(sendedCard['secondHead'], FontWeight.bold),
                            padding: EdgeInsets.all(10.0),
                          ),
                          ListBuilder(sendedCard['secondList']),
                      ],
                      ),
                      visible: sendedCard['secondHead'] != ''?true:false,
                    ),
                    Divider(height: 10.0, color: Colors.white),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          InfoContainer(Colors.yellow[900], Colors.yellow[200],
                              sendedCard['infoHead'], 18.0, false, FontWeight.bold),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                              color: Colors.yellow[100],
                            ),
                            child: ListBuilder(sendedCard['infoList']),
                          ),
                        ],
                      ),
                      visible: sendedCard['infoHead'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          InfoContainer(Colors.yellow[900], Colors.yellow[200],
                              sendedCard['infoHead2'], 18.0, false, FontWeight.bold),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                              color: Colors.yellow[100],
                            ),
                            child: ListBuilder(sendedCard['infoList2']),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                              color: Colors.yellow[100],
                            ),
                            child: sendedCard['text'] != ''?NormalText(sendedCard['text'], FontWeight.normal):Container(),
                          ),
                        ],
                      ),
                      visible: sendedCard['infoHead2'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          InfoContainer(Colors.yellow[900], Colors.yellow[200],
                              sendedCard['thirdHead'], 18.0, false, FontWeight.bold),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                              color: Colors.yellow[100],
                            ),
                            child: ListBuilder(sendedCard['thirdList']),
                          ),
                        ],
                      ),
                      visible: sendedCard['thirdHead'] != ''?true:false,
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
