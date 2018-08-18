import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/flexible_row_normal_text.dart';

class FeatureSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  FeatureSecondCardDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(20.0),
      margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: sendedCard['image'].length > 0
          ? Image.asset(
              "images/${sendedCard['image']}",
              width: 450.0,
            )
          : new Text(
              'Brak zdjecia',
              style: new TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify,
            ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          new InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: new Container(
              height: 50.0,
              width: 150.0,
              decoration: new BoxDecoration(
                color: Colors.blue[800],
                border: new Border.all(color: Colors.white),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              child: new Center(
                child: new Text(
                  'Wróć',
                  style: new TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );

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
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listOne'][0], FontWeight.normal),
                    ),
                    ListTile(
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
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['secondList'][0], FontWeight.normal),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['secondList'][1], FontWeight.normal),
                    ),
                    Divider(),
                    buttonSection
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
