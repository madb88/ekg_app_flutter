import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/normal_text.dart';

class SixComponentFirstNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  SixComponentFirstNestedCardDetailPage(this.sendedCard);

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
                      child: NormalText(sendedCard['text'], FontWeight.bold),
                      visible: sendedCard['text'] != "" ? true : false,
                    ),
                    Divider(color: Colors.white),
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
                    Visibility(
                      child: Column(
                        children: <Widget>[
                          InfoContainer(
                              Colors.yellow[900],
                              Colors.yellow[100],
                              sendedCard['infoTextHead2'],
                              18.0,
                              false,
                              FontWeight.bold),
                          InfoContainer(
                              Colors.yellow[900],
                              Colors.yellow[100],
                              sendedCard['infoText2'],
                              18.0,
                              false,
                              FontWeight.normal),
                        ],
                      ),
                      visible: sendedCard['infoTextHead2'] != "" || sendedCard['infoText2'] != ''? true : false,
                    ),
                    Divider(color: Colors.white),

                    Visibility(
                      child: InfoContainer(
                          Colors.yellow[900],
                          Colors.yellow[100],
                          sendedCard['infoText3'],
                          18.0,
                          false,
                          FontWeight.bold),
                      visible: sendedCard['infoText3'] != "" ? true : false,
                    ),
                    Visibility(
                      child: ListBuilder(sendedCard['list2']),
                      visible: sendedCard['list2'] != "" ? true : false,
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
