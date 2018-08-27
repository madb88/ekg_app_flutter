import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/flexible_row_normal_text.dart';
import '../../customWidgets/back_card_button.dart';

class OtherConceptsSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  OtherConceptsSecondCardDetailPage(this.sendedCard);

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
                            child: Text(sendedCard['description'],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),

                      ],
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['list'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['list'] == null ? 0 : sendedCard['list'].length,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoText'], 20.0, false,FontWeight.normal),
                    Divider(),
                    FlexibleRowNormalText(sendedCard['textOne'], 18.0, FontWeight.normal),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color: Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: Column(
                        children: <Widget>[
                          NormalText(
                              sendedCard['textHead'], FontWeight.bold
                          ),
                          Divider(
                            height: 10.0,
                            color: Colors.yellow[100],
                          ),
                          NormalText(
                              sendedCard['textSecond'], FontWeight.normal),
                        ],
                      ),
                    ),
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
