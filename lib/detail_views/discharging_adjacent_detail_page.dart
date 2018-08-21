import 'package:flutter/material.dart';
import '../customWidgets/normal_text.dart';
import '../customWidgets/back_card_button.dart';

class DischargingAdjacentDetailPage extends StatelessWidget {
  final sendedCard;
  DischargingAdjacentDetailPage(this.sendedCard);

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
                          child: NormalText(
                              sendedCard['description'], FontWeight.normal),
                        )
                      ],
                    ),
                    Divider(
                      height: 25.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['subtitle1'], FontWeight.bold),
                        )
                      ],
                    ),
                    Divider(
                      height: 5.0,
                      color: Colors.white,
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['listOne'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['listOne'] == null ? 0 : sendedCard['listOne'].length,
                      shrinkWrap: true,
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Container(
                        padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border(left: BorderSide(color: Colors.blue[800], width: 5.0)),
                          color: Colors.blue[100],
                        ),
                        child: Column(children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: NormalText(
                                sendedCard['subtitle2'], FontWeight.bold),
                          )
                        ],
                      ),
                      Divider(
                        height: 15.0,
                        color: Colors.blue[100],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                              child: NormalText(
                                  sendedCard['secondListElement1'],
                                  FontWeight.normal)),
                        ],
                      ),
                      Divider(
                        height: 15.0,
                        color: Colors.blue[100],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                              child: NormalText(
                                  sendedCard['secondListElement2'],
                                  FontWeight.normal)),
                        ],
                      ),
                    ])),
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
