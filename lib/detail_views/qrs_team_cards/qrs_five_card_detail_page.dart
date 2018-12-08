import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/list_builder.dart';

class QrsFiveCardDetailPage extends StatelessWidget {
  final sendedCard;

  QrsFiveCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['firstHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(
                      color: Colors.white
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['firstInfoContainer'], 18.0, false,FontWeight.normal),
                    Divider(
                        color: Colors.white
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['secondInfoContainer'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Visibility(
                      child:
                          Card(
                            elevation: 2.0,
                            shape: Border.all(color: Colors.blue[900]),
                            color: Colors.grey[200],
                            child:
                            Padding(
                              padding: EdgeInsets.all(5.5),
                              child: Text(sendedCard['extraText'], style: TextStyle(fontSize: 18.0),textAlign: TextAlign.center,),
                            ),
                          ),
                      visible: sendedCard['extraText'] != '' ? true : false,
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Row(
                      children: <Widget>[
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Colors.red[900], width: 5.0)),
                          color: Colors.red[100],
                        ),
                        child: Column(
                          children: <Widget>[
                            NormalText(
                                sendedCard['redInfoContainer1'], FontWeight.normal),
                            Divider(height: 10.0, color: Colors.blue[100]),
                            Row(
                              children: <Widget>[
                                Text(sendedCard['redInfoContainer2'], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    ],
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(
                        color: Colors.white
                    ),
                    InfoContainer(Colors.blue[900], Colors.grey[100], sendedCard['boldText'], 18.0, false,FontWeight.bold)
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
