import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';

class ThirdComponentFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  ThirdComponentFirstCardDetailPage(
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
                    sendedCard['redText'] != ''?InfoContainer(Colors.red[900], Colors.red[200],
                        sendedCard['redText'], 18.0, false, FontWeight.bold):Container(),
                    Divider(height: 10.0, color: Colors.white),

                    sendedCard['listHead'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['listHead'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['secondList'] !=''?Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: ListBuilder(sendedCard['secondList']),
                    ):Container(),

                    Divider(
                      color: Colors.white
                    ),
                    sendedCard['secondHead'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['secondHead'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['thirdList'] != ''?Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: ListBuilder(sendedCard['thirdList']),
                    ):Container(),
                    sendedCard['thirdHead'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['thirdHead'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['fourthList'] != ''?
                    Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: ListBuilder(sendedCard['fourthList'])
                    ):Container(),
                    sendedCard['fiveHead'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['fiveHead'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['fiveList'] != ''?
                    Container(
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                          color: Colors.yellow[100],
                        ),
                        child: ListBuilder(sendedCard['fiveList'])
                    ):Container(),
                    sendedCard['sixHead'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['sixHead'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['sixList'] != ''?
                    Container(
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                          color: Colors.yellow[100],
                        ),
                        child: ListBuilder(sendedCard['sixList'])
                    ):Container(),
                    sendedCard['sevenHead'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['sevenHead'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['sevenList'] != ''?
                    Container(
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                          color: Colors.yellow[100],
                        ),
                        child: ListBuilder(sendedCard['sevenList'])
                    ):Container(),
                    Divider(height: 10.0, color: Colors.white),

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
