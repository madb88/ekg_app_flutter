import 'package:flutter/material.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/info_container.dart';

class NestedShortcutsFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  NestedShortcutsFirstCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(6.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InfoContainer(Colors.blue[900], Colors.blue[100],
                        sendedCard['infoBox'], 20.0, false, FontWeight.bold),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(
                          sendedCard['subInfo'],
                          style: TextStyle(fontSize: 17.0),
                        )),
                      ],
                    ),
                    Divider(),
                    InfoContainer(Colors.yellow[900], Colors.yellow[400],
                        sendedCard['Head1'], 20.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['Text1'], 20.0, false, FontWeight.normal),
                    Divider(),
                    InfoContainer(Colors.yellow[900], Colors.yellow[400],
                        sendedCard['Head2'], 20.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['SubHead1'], 20.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['SubText1'], 20.0, false, FontWeight.normal),
                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['SubHead2'], 20.0, false, FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['SubText2'], 20.0, false, FontWeight.normal),
                    Divider(),
                    InfoContainer(Colors.blue[900], Colors.blue[100],
                        sendedCard['infoBox2'], 20.0, false, FontWeight.bold),
                    Divider(),

                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['SubHead3'], 20.0, false, FontWeight.bold),
                    ListBuilder(sendedCard['subList3']),
                    InfoContainer(Colors.yellow[900], Colors.yellow[200],
                        sendedCard['SubHead4'], 20.0, false, FontWeight.bold),
                    ListBuilder(sendedCard['subList4'])
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
