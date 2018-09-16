import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/category_button_coloredit.dart';

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
                    Visibility(
                      child: InfoContainer(Colors.blue[900], Colors.white,
                          sendedCard['infoWithButton'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['infoWithButton'] != ""?true:false,
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(height: 10.0, color: Colors.white),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          NormalText(sendedCard['eightHead'], FontWeight.bold),
                          ListBuilder(sendedCard['eightList'])
                        ],
                      ),
                      visible: sendedCard['eightHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.red[900], Colors.red[200],
                          sendedCard['redText'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['redText'] != ''?true:false,
                    ),
                    Divider(height: 10.0, color: Colors.white),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          InfoContainer(Colors.yellow[900], Colors.yellow[200],
                              sendedCard['listHead'], 18.0, false, FontWeight.bold),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                                  color: Colors.yellow[100],
                                ),
                                child: ListBuilder(sendedCard['secondList']),
                              ),
                        ],
                        ),
                      visible: sendedCard['listHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.red[900], Colors.red[200],
                          sendedCard['redTextWithButton'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['redTextWithButton'] != ""?true:false,
                    ),

                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          InfoContainer(Colors.yellow[900], Colors.yellow[200],
                              sendedCard['secondHead'], 18.0, false, FontWeight.bold),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                              color: Colors.yellow[100],
                            ),
                            child: ListBuilder(sendedCard['thirdList']),
                          ),
                        ],
                      ),
                      visible: sendedCard['secondHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                          sendedCard['thirdHead'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['thirdHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                            color: Colors.yellow[100],
                          ),
                          child: ListBuilder(sendedCard['fourthList'])
                      ),
                      visible: sendedCard['fourthList'] != ''?true:false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                          sendedCard['fiveHead'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['fiveHead'] != ''?true:false,
                    ),
                    Visibility(
                      child:  Container(
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                            color: Colors.yellow[100],
                          ),
                          child: ListBuilder(sendedCard['fiveList'])
                      ),
                      visible: sendedCard['fiveList'] != ''?true:false,
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          NormalText(sendedCard['nineHead'], FontWeight.bold),
                          ListBuilder(sendedCard['nineList']),
                        ],
                      ),
                      visible: sendedCard['secondHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                          sendedCard['sixHead'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['sixHead'] != ''?true:false,
                    ),
                    Visibility(
                      child:  Container(
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                            color: Colors.yellow[100],
                          ),
                          child: ListBuilder(sendedCard['sixList'])
                      ),
                      visible:  sendedCard['sixList'] != ''?true:false,
                    ),
                    Divider(
                      color: Colors.white
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          NormalText(sendedCard['tenHead'], FontWeight.bold),
                          ListBuilder(sendedCard['tenList']),
                        ],
                      ),
                      visible: sendedCard['secondHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                          sendedCard['sevenHead'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['sevenHead'] != ''?true:false,
                    ),
                    Visibility(
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                            color: Colors.yellow[100],
                          ),
                          child: ListBuilder(sendedCard['sevenList'])
                      ),
                      visible:  sendedCard['sevenList'] != ''?true:false,
                    ),
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
