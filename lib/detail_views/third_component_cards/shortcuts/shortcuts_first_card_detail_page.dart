import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/normal_text.dart';

class ShortcutsFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  ShortcutsFirstCardDetailPage(
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
                    Divider(),
                    sendedCard['listHead'] != ''? Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Colors.yellow[900], width: 5.0)),
                          color:  Colors.yellow[100],
                        ),
                        child:
                        Column(
                          children: <Widget>[
                            sendedCard['listHead'] != ''?Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Flexible(
                                    child: NormalText(
                                        sendedCard['listHead'], FontWeight.bold)),
                              ],
                            ):Container(),
                            ListTile(
                              title: Text(sendedCard['listElement'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.normal)),
                            )
                          ],
                        )
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
