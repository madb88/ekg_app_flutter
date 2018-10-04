import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/list_builder.dart';

class QrsFirstNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  QrsFirstNestedCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ListBuilder(sendedCard['list']),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      padding: EdgeInsets.only(left: 15.0),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.subdirectory_arrow_right),
                          title: Text(sendedCard['listNested'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['listNested'] == null ? 0 : sendedCard['listNested'].length,

                      shrinkWrap: true,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['secondList'])
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
