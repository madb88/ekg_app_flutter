import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';

class SuperaventricularFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  SuperaventricularFirstCardDetailPage(
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
                    Divider(
                      color: Colors.white
                    ),
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
                    sendedCard['listHead2'] != ''?InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['listHead2'], 18.0, false, FontWeight.bold):Container(),
                    sendedCard['secondList2'] !=''?Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: ListBuilder(sendedCard['secondList2']),
                    ):Container()
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
