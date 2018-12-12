import 'package:flutter/material.dart';
import '../../../customWidgets/flexible_row_normal_text.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/list_builder.dart';

class StElevationSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  StElevationSecondCardDetailPage(this.sendedCard);

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
                    Divider(
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(sendedCard['subTitle'], 20.0, FontWeight.bold),
                    ListBuilder(sendedCard['list']),
                    Divider(
                      color: Colors.white,
                    ),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redInfo'], 18.0, false, FontWeight.bold),
                    Divider(
                      color: Colors.white,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    FlexibleRowNormalText(sendedCard['listHead'], 20.0, FontWeight.bold),
                    ListBuilder(sendedCard['secondList']),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['extraListTile'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
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
