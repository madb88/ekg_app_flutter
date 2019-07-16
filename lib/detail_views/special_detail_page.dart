import 'package:flutter/material.dart';
import '../customWidgets/color_text.dart';
import '../customWidgets/normal_text.dart';

class SpecialDetailPage extends StatelessWidget {
  final sendedCard;
  final String imageAttribution = "By OpenStax College [CC BY 3.0  (https://creativecommons.org/licenses/by/3.0)], via Wikimedia Commons";
  SpecialDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(10.0),
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
                    Container(
                      child: Table(
                        border: TableBorder(horizontalInside: BorderSide(color: Colors.blue[300], width: 0.5,)),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,

                        children: [
                          TableRow(
                              children: [
                                ColoredText(Colors.red, sendedCard['redTitle']),
                                Text(sendedCard['redText'], style: TextStyle(fontSize: 18.0),),
                              ]
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.yellow[800], sendedCard['yellowTitle']),
                              Text(sendedCard['yellowText'], style: TextStyle(fontSize: 18.0),),
                            ],
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.green[800], sendedCard['greenTitle']),
                              Text(sendedCard['greenText'], style: TextStyle(fontSize: 18.0),),
                            ],
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.black, sendedCard['blackTitle']),
                              Text(sendedCard['blackText'], style: TextStyle(fontSize: 18.0),),
                            ],
                          )
                        ],
                      ),
                    ),
                    normalText,
                    subtitlTwoSection,
                    Container(
                      child: Table(
                        border: TableBorder(horizontalInside: BorderSide(color: Colors.black, width: 0.5,)),
                        columnWidths: {1: FractionColumnWidth(0.85)},
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(
                            decoration: BoxDecoration(color: Colors.grey[100]),
                              children: [
                                ColoredText(Colors.red, sendedCard['redTitle2']),
                                Text(sendedCard['redText2'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                              ]
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.yellow[800], sendedCard['yellowTitle2']),
                              Text(sendedCard['yellowText2'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(color: Colors.grey[100]),

                            children: [
                              ColoredText(Colors.green[800], sendedCard['greenTitle2']),
                              Text(sendedCard['greenText2'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.brown, sendedCard['brownTitle']),
                              Text(sendedCard['brownText'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(color: Colors.grey[100]),

                            children: [
                              ColoredText(Colors.black, sendedCard['blackTitle2']),
                              Text(sendedCard['blackText2'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.purple, sendedCard['purpleTitle']),
                              Text(sendedCard['purpleText'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          ),
                          TableRow(
                            decoration: BoxDecoration(color: Colors.grey[100]),

                            children: [
                              ColoredText(Colors.grey[500], sendedCard['greyTitle']),
                              Text(sendedCard['greyText'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          ),
                          TableRow(
                            children: [
                              ColoredText(Colors.grey[300], sendedCard['lightGreyTitle']),
                              Text(sendedCard['lightGreyText'], style: TextStyle(fontSize: 20.0),textAlign: TextAlign.justify,),
                            ],
                          )
                        ],
                      ),
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
