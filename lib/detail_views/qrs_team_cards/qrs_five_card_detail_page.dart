import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/flexible_row_normal_text.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/info_container.dart';

class QrsFiveCardDetailPage extends StatelessWidget {
  final sendedCard;

  QrsFiveCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(5.0),
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
                    ),                    Divider(
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
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['list'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['list'] == null ? 0 : sendedCard['list'].length,
                      shrinkWrap: true,
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['boldText'], 18.0, false,FontWeight.bold),

                    Divider(
                        color: Colors.white
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
