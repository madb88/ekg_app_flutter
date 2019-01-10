import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/list_builder.dart';

class LastRCardDetailPage extends StatelessWidget {
  final sendedCard;

  LastRCardDetailPage(
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
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['subTitle'], FontWeight.bold)),
                      ],
                    ),
                    Divider(),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['infoBox'], 18.0, false, FontWeight.bold),
                    ListBuilder(sendedCard['list']),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['listElement'],style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
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
