import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/image_widget.dart';

class FirstRCardDetailPage extends StatelessWidget {
  final sendedCard;

  FirstRCardDetailPage(
      this.sendedCard,
    );

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
                        Flexible(child: NormalText(sendedCard['subTitle'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.blue[900]),
                    Visibility(
                      child: ListBuilder(sendedCard['secondList']),
                      visible: sendedCard['secondList'] != '' ? true : false,
                    ),
                    Visibility(
                      child: Container(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: ImageWidget(sendedCard['image']),
                        ),
                        padding: EdgeInsets.all(15.0),
                      ),
                      visible: sendedCard['image'] != '' ? true : false,
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
