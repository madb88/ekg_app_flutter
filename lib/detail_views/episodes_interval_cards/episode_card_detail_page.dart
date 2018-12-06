import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/list_builder.dart';

class EpisodeCardDetailPage extends StatelessWidget {
  final sendedCard;

  EpisodeCardDetailPage(this.sendedCard);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: CustomScrollView(slivers: <Widget>[
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
                    ListBuilder(sendedCard['listOne']),
                    Divider(
                      height: 30.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['listHead2'], FontWeight.bold))
                      ],
                    ),
                    ListBuilder(sendedCard['listTwo']),

                    Divider(
                      height: 30.0,
                      color: Colors.white,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['listHead3'], FontWeight.bold))
                      ],
                    ),
                    Visibility(
                      child:  ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['extraListTile'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue[900])),
                          subtitle: Text(sendedCard['extraListTileSubtitle'], style: TextStyle(fontSize: 20.0, color: Colors.black))
                      ),
                      visible: sendedCard['extraListTile'] != '' ? true : false,
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.all(1.0),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: index == 0?Text(sendedCard['listThree'][index],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.blue[900])):
                          Text(sendedCard['listThree'][index],style: TextStyle(fontSize: 20.0)),
                          subtitle: index == 0?Text(sendedCard['extraTextOne'], style: TextStyle(fontSize: 20.0, color: Colors.black)):Text(''),
                        );
                      },
                      itemCount: sendedCard['listThree'] == null ? 0 : sendedCard['listThree'].length,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['listHead4'], FontWeight.bold))
                      ],
                    ),
                    ListBuilder(sendedCard['list4'])
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
