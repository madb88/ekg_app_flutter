import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/flexible_row_normal_text.dart';
import '../../customWidgets/back_card_button.dart';

class AxisThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  AxisThirdCardDetailPage(this.sendedCard);

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
                            child: Text(sendedCard['titleOne'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['subTitle'], FontWeight.normal))
                      ],
                    ),
                    Divider(
                      height: 20.0,
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
                                    sendedCard['infoPart1'], FontWeight.bold),
                                Divider(height: 10.0, color: Colors.blue[100]),
                                Row(
                                  children: <Widget>[
                                    NormalText(sendedCard['infoPart2Title'],
                                        FontWeight.bold),
                                  ],
                                ),
                                NormalText(
                                    sendedCard['infoPart2'], FontWeight.normal),
                                Divider(height: 10.0, color: Colors.blue[100]),
                                Row(
                                  children: <Widget>[
                                    NormalText(sendedCard['infoPart3Title'],
                                        FontWeight.bold),
                                  ],
                                ),
                                NormalText(
                                    sendedCard['infoPart3'], FontWeight.normal),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(
                      height: 20.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(
                        sendedCard['listHead'], 20.0, FontWeight.bold),
                    Divider(
                      height: 12.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(
                        sendedCard['listNestedHead'], 20.0, FontWeight.bold),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['firstList'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['firstList'] == null ? 0 : sendedCard['firstList'].length,
                      shrinkWrap: true,
                    ),
                    Divider(
                      height: 20.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(
                        sendedCard['listNestedHead2'], 20.0, FontWeight.bold),

                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['secondList'][index],style: TextStyle(fontSize: 20.0)),
                          );
                      },
                      itemCount: sendedCard['secondList'] == null ? 0 : sendedCard['secondList'].length,

                    ),
                    Divider(
                      height: 20.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(
                        sendedCard['listNestedHead3'], 20.0, FontWeight.bold),
                    Divider(
                      height: 20.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(
                        sendedCard['listNestedHead4'], 20.0, FontWeight.bold),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['thirdList'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['thirdList'] == null ? 0 : sendedCard['thirdList'].length,
                    ),
                    Divider(
                      height: 20.0,
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(
                        sendedCard['ListNestedHead5'], 20.0, FontWeight.bold),
                    Divider(
                      height: 20.0,
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
