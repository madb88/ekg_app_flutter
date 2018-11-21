import 'package:flutter/material.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/nested_list_builder.dart';
import '../../../../customWidgets/info_container.dart';

class OzwFiveCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwFiveCardDetailPage(this.sendedCard);

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
                      child: Text(
                        sendedCard['text'],
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.justify,
                      ),
                      visible: sendedCard['text'] != ''?true:false,
                    ),

                    Divider(color: Colors.white),
                    Visibility(
                      child: ListBuilder(sendedCard['list']),
                      visible: sendedCard['list'] != ''?true:false,

                    ),
                    Divider(color: Colors.white),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['extraInfo'],18.0,false,FontWeight.bold),
                      visible: sendedCard['extraInfo'] != ''?true:false,
                    ),
                    Visibility(
                      child: ListBuilder(sendedCard['secondList']),
                      visible: sendedCard['secondList'] != ''?true:false,

                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['extraInfo2'],18.0,false,FontWeight.bold),
                      visible: sendedCard['extraInfo2'] != ''?true:false,
                    ),
                    ListTile(
                        leading: Icon(Icons.chevron_right),
                        title: Text(sendedCard['firstListTile'],
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                      ),
                    ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['secondListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['thirdListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                    NestedListBuilder(sendedCard['nestedList']),
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
