import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';


class FeatureSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  FeatureSecondCardDetailPage(this.sendedCard);

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
                        Flexible(
                            child: Text(sendedCard['firstHeadLiner'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listOne'][0], FontWeight.normal),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listOne'][1], FontWeight.normal),
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['secondHeadLiner'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['secondList'][0], FontWeight.normal),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(1.0),
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['secondList'][1], FontWeight.normal),
                    ),
                    Divider(
                      color: Colors.white,
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
