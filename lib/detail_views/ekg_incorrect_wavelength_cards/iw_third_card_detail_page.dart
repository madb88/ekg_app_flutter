import 'package:flutter/material.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/image_widget.dart';

class IwThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  IwThirdCardDetailPage(this.sendedCard);

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
                            child: Text(sendedCard['subTitleOne'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['listElement'],
                          style: TextStyle(fontSize: 20.0)),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['subTitleSecond'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.white),
                    Divider(height: 15.0, color: Colors.white),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border(
                            left: BorderSide(
                                color: Colors.yellow[900], width: 5.0)),
                        color: Colors.yellow[100],
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(sendedCard['titleHead'],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0)),
                        ListView.builder(
                          physics: ScrollPhysics(),
                          padding: EdgeInsets.all(1.0),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Icon(Icons.chevron_right),
                              title: index == 2 || index == 1 ?Text(sendedCard['secondList'][index],style: TextStyle(fontSize: 20.0, color: Colors.blue[900]))
                                  :Text(sendedCard['secondList'][index],style: TextStyle(fontSize: 20.0)),
                            );
                          },
                          itemCount: sendedCard['secondList'] == null ? 0 : sendedCard['secondList'].length,
                        ),
                        ],
                      ),
                    ),
                    ImageWidget('zalProznoN'),

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
