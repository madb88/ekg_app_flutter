import 'package:flutter/material.dart';
import '../../../../customWidgets/list_builder.dart';

class OzwNineCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwNineCardDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          elevation: 0.0,
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text(sendedCard['title']),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Visibility(
                      child: Text(
                        sendedCard['headOne'],
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,

                      ),
                      visible: sendedCard['headOne'] != '' ? true : false,
                    ),
                    Divider(
                      color: Colors.white
                    ),
                    Text(
                      sendedCard['textOne'],
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                    Divider(),
                    Visibility(
                      child: Text(
                        sendedCard['headTwo'],
                        style: TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      visible: sendedCard['headTwo'] != '' ? true : false,
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Text(
                      sendedCard['textTwo'],
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                    Divider(),
                    Visibility(
                      child: Text(
                        sendedCard['headThree'],
                        style: TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      visible: sendedCard['headThree'] != '' ? true : false,
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Text(
                      sendedCard['textThree'],
                      style: TextStyle(fontSize: 20.0),
                      textAlign: TextAlign.justify,
                    ),
                    Divider(),
                    Visibility(
                      child: Text(
                        sendedCard['headFour'],
                        style: TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,
                      ),
                      visible: sendedCard['headThree'] != '' ? true : false,
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    ListBuilder(sendedCard['list']),

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
