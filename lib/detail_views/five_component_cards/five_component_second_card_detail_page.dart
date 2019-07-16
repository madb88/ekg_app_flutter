import 'package:flutter/material.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/image_widget.dart';


class FiveComponentSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  FiveComponentSecondCardDetailPage(
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
                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['listHead'], 18.0, false, FontWeight.bold),
                    ListBuilder(sendedCard['list']),
                    Divider(height: 10.0, color: Colors.white),
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
                    ),
                    Divider(height: 10.0, color: Colors.white),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                                sendedCard['listHead4'], 18.0, false, FontWeight.bold),
                          ),
                          ListBuilder(sendedCard['list4']),
                        ],
                      ),
                      visible: sendedCard['listHead4'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                                sendedCard['listHead2'], 18.0, false, FontWeight.bold),
                          ),
                          ListBuilder(sendedCard['list2']),
                        ],
                      ),
                      visible: sendedCard['listHead2'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            child: InfoContainer(Colors.yellow[900], Colors.yellow[200],
                                sendedCard['infoText'], 18.0, false, FontWeight.bold),
                          ),
                        ],
                      ),
                      visible: sendedCard['infoText'] != ''?true:false,
                    ),
                    Visibility(
                      child:
                      Column(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                              color: Colors.yellow[100],
                            ),
                            child: ListBuilder(sendedCard['list5']),
                          ),
                        ],
                      ),
                      visible: sendedCard['list5'] != ''?true:false,
                    ),
                    Visibility(
                      child: Container(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: ImageWidget(sendedCard['image']),
                        ),
                        padding: EdgeInsets.all(15.0),
                      ),
                      visible: sendedCard['image'] != '' ? true : false,
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
