import 'package:flutter/material.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/normal_text.dart';


class FiveComponentThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  FiveComponentThirdCardDetailPage(
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
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          NormalText(sendedCard['text'], FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['text'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          ListBuilder(sendedCard['list2']),
                        ],
                      ),
                      visible: sendedCard['list2'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child:InfoContainer(Colors.yellow[900], Colors.yellow[200],
                                sendedCard['listHead'], 18.0, false, FontWeight.bold),
                          ),
                          ListBuilder(sendedCard['list']),

                        ],
                      ),
                      visible: sendedCard['listHead'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child:InfoContainer(Colors.yellow[900], Colors.yellow[200],
                                sendedCard['listHead2'], 18.0, false, FontWeight.bold),
                          ),
                          ListBuilder(sendedCard['secondList2']),
                        ],
                      ),
                      visible: sendedCard['listHead2'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child:InfoContainer(Colors.yellow[900], Colors.yellow[200],
                                sendedCard['listHead3'], 18.0, false, FontWeight.bold),
                          ),
                          ListBuilder(sendedCard['list3']),
                        ],
                      ),
                      visible: sendedCard['listHead3'] != ''?true:false,
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
