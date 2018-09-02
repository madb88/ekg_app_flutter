import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/info_container.dart';

class WavelengthUSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  WavelengthUSecondCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['list'][index],
                              style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['list'] == null
                          ? 0
                          : sendedCard['list'].length,
                      shrinkWrap: true,
                    ),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.blue[900], Colors.blue[100],
                        sendedCard['infoBox'], 20.0, false, FontWeight.bold),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['list'][3],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
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
