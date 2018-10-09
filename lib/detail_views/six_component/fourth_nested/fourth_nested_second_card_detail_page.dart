import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/normal_text.dart';

class FourthNestedSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  FourthNestedSecondCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['textOne'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['firstChapter'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.blue),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(sendedCard['firstListTile'],
                                FontWeight.normal)),
                      ],
                    ),
                    ListBuilder(sendedCard['firstNestedList']),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(sendedCard['secondListTile'],
                                FontWeight.normal)),
                      ],
                    ),
                    ListBuilder(sendedCard['secondNestedList']),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(sendedCard['thirdListTile'],
                                FontWeight.normal)),
                      ],
                    ),
                    ListBuilder(sendedCard['thirdNestedList']),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['secondChapter'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(color: Colors.blue),
                    ListBuilder(sendedCard['fourthNestedList']),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['thirdChapter'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(color: Colors.blue),
                    ListBuilder(sendedCard['fiveNestedList']),
                    InfoContainer(
                        Colors.yellow[900],
                        Colors.yellow[100],
                        sendedCard['extraInfoOne'],
                        18.0,
                        false,
                        FontWeight.normal),
                    InfoContainer(
                        Colors.yellow[900],
                        Colors.yellow[100],
                        sendedCard['extraInfoSecond'],
                        18.0,
                        false,
                        FontWeight.normal),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['fourthChapter'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(color: Colors.blue),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['textTwo'], FontWeight.normal)),
                      ],
                    ),
                    ListBuilder(sendedCard['sixNestedList']),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['textThree'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    InfoContainer(
                        Colors.yellow[900],
                        Colors.yellow[100],
                        sendedCard['extraInfoThird'],
                        18.0,
                        false,
                        FontWeight.normal),
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
