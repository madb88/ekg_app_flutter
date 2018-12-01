import 'package:flutter/material.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/list_builder.dart';

class IwFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  IwFirstCardDetailPage(this.sendedCard);

  Widget imageSection = Container(
    padding: const EdgeInsets.all(10.0),
    margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
    child: Image.asset("images/ekg_images/niskizalP.jpg", width: 200.0,)
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
                        Flexible(
                            child: Text(sendedCard['subTitle'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(
                      height: 15.0,
                      color: Colors.white
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['textOne'], 19.0, false,FontWeight.normal),
                    imageSection,
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
