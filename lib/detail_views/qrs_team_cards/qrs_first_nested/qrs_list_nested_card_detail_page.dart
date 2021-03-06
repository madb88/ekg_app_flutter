import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/list_builder.dart';

class QrsListNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  QrsListNestedCardDetailPage(
      this.sendedCard,

    );

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
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),

                    ListTile(
                      leading: sendedCard['boldListTile'] != "" ? Icon(Icons.chevron_right) : Text(''),
                      title: Text(sendedCard['boldListTile'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue[900])),
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
