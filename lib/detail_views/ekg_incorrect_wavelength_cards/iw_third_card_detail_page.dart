import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/flexible_row_normal_text.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/info_container.dart';

class IwThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  IwThirdCardDetailPage(this.sendedCard);

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
                            child: Text(sendedCard['subTitleOne'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['listElement'],style: TextStyle(fontSize: 20.0)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['subTitleSecond'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
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

                    Divider(
                        height: 15.0,
                        color: Colors.white
                    ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: Colors.yellow[900], width: 5.0)),
                      color: Colors.yellow[100],
                    ),
                    child:
                        Column(
                          
                          children: <Widget>[
                                Text(sendedCard['titleHead'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                ListView.builder(
                                  physics: ScrollPhysics(),
                                  itemBuilder: (BuildContext context, int index) {
                                    return ListTile(
                                      leading: Icon(Icons.chevron_right),
                                      title: Text(sendedCard['secondList'][index],style: TextStyle(fontSize: 20.0)),
                                    );
                                  },
                                  itemCount: sendedCard['secondList'] == null ? 0 : sendedCard['secondList'].length,
                                  shrinkWrap: true,

                             
                            ),
                          ],
                        ),

                  ),

                    Divider(
                      height: 15.0,
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
