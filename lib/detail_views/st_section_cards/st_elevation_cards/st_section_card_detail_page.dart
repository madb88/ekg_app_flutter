import 'package:flutter/material.dart';
import '../../../customWidgets/flexible_row_normal_text.dart';
import '../../../customWidgets/list_builder.dart';

class StElevationFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  StElevationFirstCardDetailPage(this.sendedCard);

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
                    ListBuilder(sendedCard['list']),
                    ListView.builder(
                      padding: EdgeInsets.only(left: 15.0),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.subdirectory_arrow_right),
                          title: Text(sendedCard['nestedList'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['nestedList'] == null ? 0 : sendedCard['nestedList'].length,

                      shrinkWrap: true,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),

                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['listTileExtra'],style: TextStyle(fontSize: 20.0)),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),

                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['secondListTileExtra'],style: TextStyle(fontSize: 20.0)),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['thirdListTileExtra'],style: TextStyle(fontSize: 20.0)),
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
