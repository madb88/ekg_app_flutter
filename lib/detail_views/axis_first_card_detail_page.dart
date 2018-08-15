import 'package:flutter/material.dart';
import '../customWidgets/normal_text.dart';
import '../customWidgets/info_container.dart';

class AxisFirstCardDetailPage extends StatelessWidget {
  final sendedCard;
  AxisFirstCardDetailPage(this.sendedCard);

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
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("EKG Fiszki"),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                child: ListView(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['titleOne'],
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30.0)))
                      ],
                    ),
                    Divider(
                      height: 30.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['text1'], FontWeight.normal))
                      ],
                    ),
                    Divider(
                      height: 20.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['text2'], FontWeight.normal))
                      ],
                    ),
                    Divider(
                      height: 25.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: InfoContainer(
                                Colors.blue[800],
                                Colors.blue[100],
                                sendedCard['infoText'],
                                19.0)),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        NormalText(sendedCard['text3'], FontWeight.bold),
                        Flexible(
                          child: NormalText(
                              sendedCard['text3a'], FontWeight.normal),
                        ),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        NormalText(sendedCard['text4'], FontWeight.bold),
                        Flexible(
                          child: NormalText(
                              sendedCard['text4a'], FontWeight.normal),
                        ),
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['text5'], FontWeight.bold))
                      ],
                    ),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['ListHeadLine'], FontWeight.bold),
                        ),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listElement1'], FontWeight.normal),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listElement2'], FontWeight.normal),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listElement3'], FontWeight.normal),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listElement4'], FontWeight.normal),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: NormalText(
                          sendedCard['listElement5'], FontWeight.normal),
                    ),
                    Divider(),
                    buttonSection
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
