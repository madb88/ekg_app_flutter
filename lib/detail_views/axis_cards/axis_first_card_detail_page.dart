import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/list_builder.dart';

class AxisFirstCardDetailPage extends StatelessWidget {
  final sendedCard;
  AxisFirstCardDetailPage(this.sendedCard);

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
                child: 
                
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['titleOne'],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30.0)))
                      ],
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['text1'], FontWeight.normal))
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
                            child: NormalText(
                                sendedCard['text2'], FontWeight.normal))
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
                            child: InfoContainer(
                                Colors.blue[800],
                                Colors.blue[100],
                                sendedCard['infoText'],
                                19.0,
                                false,
                                FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        NormalText(sendedCard['text3'], FontWeight.bold),
                        Flexible(
                          child: NormalText(
                              sendedCard['text3a'], FontWeight.normal),
                        ),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        NormalText(sendedCard['text4'], FontWeight.bold),
                        Flexible(
                          child: NormalText(
                              sendedCard['text4a'], FontWeight.normal),
                        ),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['text5'], FontWeight.bold))
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['ListHeadLine'], FontWeight.bold),
                        ),
                      ],
                    ),
                    ListBuilder(sendedCard['listElement']),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['ListHeadLine2'], FontWeight.bold),
                        ),
                      ],
                    ),
                    ListBuilder(sendedCard['listElement2']),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['ListHeadLine3'], FontWeight.bold),
                        ),
                      ],
                    ),
                     Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['ListHeadLine4'], FontWeight.bold),
                        ),
                      ],
                    ),
                    ListBuilder(sendedCard['listElement3']),

                  Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['ListHeadLine5'], FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ]),
    
        );
  }
}


