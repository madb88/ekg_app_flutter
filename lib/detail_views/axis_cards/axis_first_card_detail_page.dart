import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/back_card_button.dart';

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
                child: 
                
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                                19.0,
                                false,
                                FontWeight.normal)),
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
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['listElement'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['listElement'] == null ? 0 : sendedCard['listElement'].length,
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
                              sendedCard['ListHeadLine2'], FontWeight.bold),
                        ),
                      ],
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['listElement2'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['listElement2'] == null ? 0 : sendedCard['listElement2'].length,
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
                              sendedCard['ListHeadLine3'], FontWeight.bold),
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
                              sendedCard['ListHeadLine4'], FontWeight.bold),
                        ),
                      ],
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['listElement3'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['listElement3'] == null ? 0 : sendedCard['listElement3'].length,
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
                              sendedCard['ListHeadLine5'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(),
                    BackCardButton('Wróć'),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ]),
    
        );
  }
}


