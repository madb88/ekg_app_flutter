import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/normal_text.dart';

class SixComponentFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  SixComponentFirstCardDetailPage(this.sendedCard);

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
                    Visibility(
                      child: NormalText(sendedCard['text'], FontWeight.normal),
                      visible: sendedCard['text'] != "" ? true : false,
                    ),
                    ListBuilder(sendedCard['list']),
                    Visibility(
                      child: Container(
                          padding: EdgeInsets.only(left: 15.0),
                          child: ListView.builder(
                            physics: ScrollPhysics(),
                            padding: EdgeInsets.all(1.0),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                leading: Icon(Icons.subdirectory_arrow_right),
                                title: Text(sendedCard['nestedList'][index],
                                    style: TextStyle(fontSize: 20.0)),
                              );
                            },
                            itemCount: sendedCard['nestedList'] == null
                                ? 0
                                : sendedCard['nestedList'].length,
                          )),
                      visible: sendedCard['nestedList'] != "" ? true : false,
                    ),
                    Visibility(
                      child: InfoContainer(
                          Colors.yellow[900],
                          Colors.yellow[100],
                          sendedCard['infoText'],
                          18.0,
                          false,
                          FontWeight.normal),
                      visible: sendedCard['infoText'] != "" ? true : false,
                    ),
                    Divider(color: Colors.white),
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
