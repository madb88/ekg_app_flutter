import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/flexible_row_normal_text.dart';
import '../../customWidgets/back_card_button.dart';

class WaveLengthNormalCardDetailPage extends StatelessWidget {
  final sendedCard;

  WaveLengthNormalCardDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(20.0),
      margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: sendedCard['image'].length > 0
          ? Image.asset(
              "images/${sendedCard['image']}",
              width: 450.0,
            )
          : new Text(
              'Brak zdjecia',
              style: new TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify,
            ),
    );

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
                            child: Text(sendedCard['description'],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),

                      ],
                    ),
                    Divider(),
//                    ListTile(
//                      leading: Icon(Icons.chevron_right),
//                      title: NormalText(
//                          sendedCard['list'][0], FontWeight.normal),
//                    ),
//                    ListTile(
//                      leading: Icon(Icons.chevron_right),
//                      title: NormalText(
//                          sendedCard['list'][1], FontWeight.normal),
//                    ),
//                    Divider(
//                      color: Colors.white,
//                    ),
//                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoText'], 20.0, false),
//                    Divider(),
//                    FlexibleRowNormalText(sendedCard['textOne'], 18.0, FontWeight.normal),
//                    Divider(
//                      height: 15.0,
//                      color: Colors.white,
//                    ),
//                    Container(
//                      padding: EdgeInsets.all(15.0),
//                      decoration: BoxDecoration(
//                        border: Border(left: BorderSide(color: Colors.yellow[900], width: 5.0)),
//                        color: Colors.yellow[100],
//                      ),
//                      child: Column(
//                        children: <Widget>[
//                          NormalText(
//                              sendedCard['textHead'], FontWeight.bold
//                          ),
//                          Divider(
//                            height: 10.0,
//                            color: Colors.yellow[100],
//                          ),
//                          NormalText(
//                              sendedCard['textSecond'], FontWeight.normal),
//                        ],
//                      ),
//                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.white,
                    ),
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
