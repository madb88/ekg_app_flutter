import 'package:flutter/material.dart';
import '../../../customWidgets/flexible_row_normal_text.dart';
import '../../../customWidgets/normal_text.dart';

class StElevationFourthCardDetailPage extends StatelessWidget {
  final sendedCard;

  StElevationFourthCardDetailPage(this.sendedCard);

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
                    FlexibleRowNormalText(sendedCard['description'], 20.0, FontWeight.bold),
                    Divider(
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(sendedCard['subTitle'], 20.0, FontWeight.bold),
                    Divider(
                      color: Colors.white,
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Colors.blue[900], width: 5.0)),
                              color: Colors.blue[100],
                            ),
                            child: Column(
                              children: <Widget>[
                                NormalText(
                                    sendedCard['infoText'], FontWeight.bold),
                                Divider(height: 10.0, color: Colors.blue[100]),
                                Row(
                                  children: <Widget>[
                                    Flexible(
                                      child:
                                        Text(sendedCard['infoText2'], style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0), textAlign: TextAlign.justify,),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                      ],
                    )
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
