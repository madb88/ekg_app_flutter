import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/info_container.dart';


class QrsThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  QrsThirdCardDetailPage(this.sendedCard);

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
                        Flexible(child: NormalText(sendedCard['listOneHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(
                      color:
                        Colors.white
                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['infoHead'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['infoHead'] != '' ? true : false,
                    ),
                    Visibility(
                      child: InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['infoText'], 18.0, false, FontWeight.normal),
                      visible: sendedCard['infoText'] != '' ? true : false,
                    ),
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
