import 'package:flutter/material.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/nested_list_builder.dart';
import '../../../../customWidgets/info_container.dart';
import '../../../../customWidgets/normal_text.dart';

class OzwSixCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwSixCardDetailPage(this.sendedCard);

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
                      Divider(),
                      ListTile(
                        leading: Icon(Icons.chevron_right),
                        title: Text(sendedCard['firstListTile'],
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.normal)),
                      ),
                    Divider(
                      color: Colors.white,
                    ),
                    NormalText(sendedCard['separator'], FontWeight.normal),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['secondListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    NormalText(sendedCard['separator'], FontWeight.normal),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['thirdListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['fourthListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),

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
