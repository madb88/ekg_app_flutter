import 'package:flutter/material.dart';
import './customWidgets/color_text.dart';
import './customWidgets/normal_text.dart';

class SpecialDetailPage extends StatelessWidget {
  final sendedCard;
  SpecialDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(20.0),
      margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: sendedCard['image'].length > 0
          ? Image.asset("images/ekg_images/${sendedCard['image']}")
          : new Text(
              'Brak zdjecia',
              style: new TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify,
            ),
    );

    Widget subtitleOneSection = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        NormalText(sendedCard['subtitle1'], FontWeight.bold),
      ],
    );

    Widget redText = Row(
      children: <Widget>[
        ColoredText(Colors.red, sendedCard['redTitle']),
        ColoredText(Colors.black, sendedCard['redText']),
      ],
    );

    Widget yellowText = Row(
      children: <Widget>[
        ColoredText(Colors.yellow[800], sendedCard['yellowTitle']),
        Text(
          sendedCard['yellowText'],
          style: new TextStyle(fontSize: 20.0),
          textAlign: TextAlign.justify,
        ),
      ],
    );

    Widget greenText = Row(
      children: <Widget>[
        ColoredText(Colors.green, sendedCard['greenTitle']),
        Text(
          sendedCard['greenText'],
          style: new TextStyle(fontSize: 20.0),
          textAlign: TextAlign.justify,
        ),
      ],
    );

    Widget blackText = Row(
      children: <Widget>[
        ColoredText(Colors.black, sendedCard['blackTitle']),
        Text(
          sendedCard['blackText'],
          style: new TextStyle(fontSize: 20.0),
          textAlign: TextAlign.justify,
        ),
      ],
    );

     Widget normalText = Row(
      children: <Widget>[
        Text(
          sendedCard['normalText'],
          style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.justify,
        ),
      ],
    );

  Widget subtitlTwoSection = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        NormalText(sendedCard['subtitle2'], FontWeight.bold),
      ],
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
                color: Colors.blueAccent,
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
          pinned: true,
          title: new Text(sendedCard['title']),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: 
                
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    subtitleOneSection,
                    redText,
                    yellowText,
                    greenText,
                    blackText,
                    normalText,
                    subtitlTwoSection,
                    Row(
                      children: <Widget>[
                        ColoredText(Colors.red, sendedCard['redTitle2']),
                        NormalText(sendedCard['redText2'], FontWeight.normal),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        ColoredText(Colors.yellow[800], sendedCard['yellowTitle2']),
                        NormalText(sendedCard['yellowText2'], FontWeight.normal),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        ColoredText(Colors.green, sendedCard['greenTitle2']),
                        NormalText(sendedCard['greenText2'], FontWeight.normal),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(sendedCard['normalText2'], FontWeight.normal),
                          )
                      ],
                    ),
                    Divider(),
                    imageSection,
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
