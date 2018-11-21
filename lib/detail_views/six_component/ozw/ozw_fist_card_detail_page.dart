import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/nested_list_builder.dart';
import '../../../customWidgets/info_container.dart';

class OzwFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwFirstCardDetailPage(this.sendedCard);

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
                    Text(
                      sendedCard['text'],
                      style: TextStyle(fontSize: 25.0),
                      textAlign: TextAlign.justify,
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['firstListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                    NestedListBuilder(sendedCard['firstNestedList']),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['secondListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                    NestedListBuilder(sendedCard['secondNestedList']),
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['extraInfo'],18.0,false,FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['firstExtraHead'],18.0,false,FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['firstExtraInfo'],18.0,false,FontWeight.normal),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['secondExtraHead'],18.0,false,FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['secondExtraInfo'],18.0,false,FontWeight.normal),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['thirdExtraHead'],18.0,false,FontWeight.bold),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['thirdExtraInfo'],18.0,false,FontWeight.normal),
                    Divider(color: Colors.white),
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
