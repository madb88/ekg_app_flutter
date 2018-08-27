import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/flexible_row_normal_text.dart';
import '../../customWidgets/back_card_button.dart';

class FeatureFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  FeatureFirstCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['title'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['list'][0], FontWeight.normal),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['list'][1], FontWeight.normal),
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(sendedCard['textOne'], 20.0, FontWeight.normal),
                    Divider(
                      height: 10.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Colors.blue[800], width: 5.0)),
                              color: Colors.blue[100],
                            ),
                            child: Column(
                              children: <Widget>[
                                NormalText(
                                  sendedCard['boldInfoText'], FontWeight.bold
                                ),
                                Divider(
                                  height: 10.0,
                                  color: Colors.blue[100],
                                ),
                                NormalText(
                                    sendedCard['infoText'], FontWeight.normal),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(),
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
