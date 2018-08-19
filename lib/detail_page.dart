import 'package:flutter/material.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import 'customWidgets/back_card_button.dart';

class DetailPage extends StatelessWidget {
  final sendedCard;
  DetailPage(this.sendedCard);
  

  @override
  Widget build(BuildContext context) {
  Widget imageSection = Container(
        padding: const EdgeInsets.all(20.0),
        margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child:
        sendedCard['image'].length > 0 ? Image.asset("images/ekg_images/${sendedCard['image']}"): new Text(
        'Brak zdjecia',
        style: new TextStyle(fontSize: 20.0),
        textAlign: TextAlign.justify,
      ),
      );

    Widget descriptionSection = Container(
      padding: const EdgeInsets.all(15.0),
      child:
      sendedCard['useHtmlTags'] == true? HtmlView(data: sendedCard['description']): Text(sendedCard['description'])
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
                  descriptionSection,
                  Divider(),
                  imageSection,
                  Divider(),
                  BackCardButton('Wróć'),
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
