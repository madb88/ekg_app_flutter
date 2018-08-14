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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.red, sendedCard['redTitle']),
                        Flexible(child: NormalText(sendedCard['redText'], FontWeight.normal)),
                      ],
                    ),
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.yellow[800], sendedCard['yellowTitle']),
                        Flexible(child: NormalText(sendedCard['yellowText'], FontWeight.normal)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.green, sendedCard['greenTitle']),
                        Flexible(child: NormalText(sendedCard['greenText'], FontWeight.normal)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.black, sendedCard['blackTitle']),
                        Flexible(child: NormalText(sendedCard['blackText'], FontWeight.normal)),
                      ],
                    ),
                    normalText,
                    subtitlTwoSection,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.red, sendedCard['redTitle2']),
                        Flexible(child: NormalText(sendedCard['redText2'], FontWeight.normal)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.yellow[800], sendedCard['yellowTitle2']),
                        Flexible(child: NormalText(sendedCard['yellowText2'], FontWeight.normal)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.green, sendedCard['greenTitle2']),
                        Flexible(child: NormalText(sendedCard['greenText2'], FontWeight.normal)),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.brown, sendedCard['brownTitle']),
                        Flexible(child: NormalText(sendedCard['brownText'], FontWeight.normal),)
                      ],
                    ),
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.black, sendedCard['blackTitle2']),
                        Flexible(child: NormalText(sendedCard['blackText2'], FontWeight.normal),)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.purple, sendedCard['purpleTitle']),
                        Flexible(child: NormalText(sendedCard['purpleText'], FontWeight.normal),)
                      ],
                    ),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.grey[500], sendedCard['greyTitle']),
                        Flexible(child: NormalText(sendedCard['greyText'], FontWeight.normal),)
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.grey[300], sendedCard['lightGreyTitle']),
                        Flexible(child: NormalText(sendedCard['lightGreyText'], FontWeight.normal),)
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
