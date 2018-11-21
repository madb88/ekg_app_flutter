import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class DetailPage extends StatelessWidget {
  final sendedCard;
  DetailPage(this.sendedCard);
  

  @override
  Widget build(BuildContext context) {
    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(20.0),
      child:
      sendedCard['useHtmlTags'] == true? HtmlView(data: sendedCard['description']): Text(sendedCard['description'], style: TextStyle(fontSize: 18.0),)
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
              return new Column(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,

                 children: <Widget>[
                  descriptionSection
                ],
              );
            },
            childCount: 1,
          ),
        ),
      ],
    ));
  }
}
