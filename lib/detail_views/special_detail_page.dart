import 'package:flutter/material.dart';
import '../customWidgets/color_text.dart';
import '../customWidgets/normal_text.dart';
import '../customWidgets/back_card_button.dart';

class SpecialDetailPage extends StatelessWidget {
  final sendedCard;
  final String imageAttribution = "By OpenStax College [CC BY 3.0  (https://creativecommons.org/licenses/by/3.0)], via Wikimedia Commons";
  SpecialDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(20.0),
      margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: sendedCard['image'].length > 0
          ? Image.asset("images/${sendedCard['image']}", width: 450.0,)
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

  return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text(sendedCard['title']),
        ),
        SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(15.0),
                child:

                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    subtitleOneSection,
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.red, sendedCard['redTitle']),
                        Flexible(child: NormalText(sendedCard['redText'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.yellow[800], sendedCard['yellowTitle']),
                        Flexible(child: NormalText(sendedCard['yellowText'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.green, sendedCard['greenTitle']),
                        Flexible(child: NormalText(sendedCard['greenText'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.black, sendedCard['blackTitle']),
                        Flexible(child: NormalText(sendedCard['blackText'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    normalText,
                    subtitlTwoSection,
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.red, sendedCard['redTitle2']),
                        Flexible(child: NormalText(sendedCard['redText2'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.yellow[800], sendedCard['yellowTitle2']),
                        Flexible(child: NormalText(sendedCard['yellowText2'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.green, sendedCard['greenTitle2']),
                        Flexible(child: NormalText(sendedCard['greenText2'], FontWeight.normal)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.brown, sendedCard['brownTitle']),
                        Flexible(child: NormalText(sendedCard['brownText'], FontWeight.normal),)
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.black, sendedCard['blackTitle2']),
                        Flexible(child: NormalText(sendedCard['blackText2'], FontWeight.normal),)
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.purple, sendedCard['purpleTitle']),
                        Flexible(child: NormalText(sendedCard['purpleText'], FontWeight.normal),)
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.grey[500], sendedCard['greyTitle']),
                        Flexible(child: NormalText(sendedCard['greyText'], FontWeight.normal),)
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ColoredText(Colors.grey[300], sendedCard['lightGreyTitle']),
                        Flexible(child: NormalText(sendedCard['lightGreyText'], FontWeight.normal),)
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['normalText2'], FontWeight.normal),)
                      ],
                    ),
                    Divider(),
                    imageSection,
                    Text(imageAttribution, textAlign: TextAlign.center),
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
