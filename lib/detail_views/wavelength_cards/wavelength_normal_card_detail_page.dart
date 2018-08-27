import 'package:flutter/material.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/back_card_button.dart';

class WaveLengthNormalCardDetailPage extends StatelessWidget {
  final sendedCard;

  WaveLengthNormalCardDetailPage(this.sendedCard);

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
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),

                      ],
                    ),
                    ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['list'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['list'] == null ? 0 : sendedCard['list'].length,
                      shrinkWrap: true,
                      ),
                    ListView.builder(
                      padding: EdgeInsets.only(left: 15.0),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.subdirectory_arrow_right),
                          title: Text(sendedCard['nestedList'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['nestedList'] == null ? 0 : sendedCard['nestedList'].length,

                      shrinkWrap: true,
                    ),
                    Divider(
                      height: 10.0,
                      color: Colors.white,
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['description'], 20.0, false,FontWeight.normal),
                    Divider(
                      height: 15.0,
                      color: Colors.white,
                    ),
                    BackCardButton('Wróć'),
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
