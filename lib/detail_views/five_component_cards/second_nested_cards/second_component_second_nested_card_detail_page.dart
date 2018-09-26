import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';


class SecondFiveComponentSecondNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  SecondFiveComponentSecondNestedCardDetailPage(
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
                    Divider(height: 15.0, color: Colors.white),
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
                            child: Column(
                              children: <Widget>[
                                ListBuilder(sendedCard['infoList']),
                                InfoContainer(Colors.yellow[200], Colors.yellow[200],
                                    sendedCard['infoHead2'], 18.0, false, FontWeight.bold),
                                ListBuilder(sendedCard['infoList2']),
                                InfoContainer(Colors.yellow[200], Colors.yellow[200],
                                    sendedCard['infoHead3'], 18.0, false, FontWeight.bold),
                                ListBuilder(sendedCard['infoList3']),
                              ],
                            )

                          ),
                        ],
                      ),
                      visible: sendedCard['infoHead'] != ''?true:false,
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
