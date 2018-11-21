import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/normal_text.dart';

class SixComponentSecondNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  SixComponentSecondNestedCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    NormalText(sendedCard['head1'], FontWeight.bold),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list1']),
                    Divider(color: Colors.white),

                    NormalText(sendedCard['head2'], FontWeight.bold),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list2']),
                    Divider(color: Colors.white),

                    NormalText(sendedCard['head3'], FontWeight.bold),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list3']),
                    Divider(color: Colors.white),
                    NormalText(sendedCard['text'], FontWeight.normal)
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
