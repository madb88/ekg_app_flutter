import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import '../../../customWidgets/nested_list_builder.dart';

class ThirdNestedThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  ThirdNestedThirdCardDetailPage(this.sendedCard);

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
                    HtmlView(data: sendedCard['titleOne']),
                    Divider(color: Colors.white),

                    Text(
                      sendedCard['textOne'],
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Divider(color: Colors.white),

                    HtmlView(data: sendedCard['titleSecond']),
                    Divider(color: Colors.white),
                    Text(
                      sendedCard['head'],
                      style: TextStyle(fontSize: 18.0),
                    ),
                    ListBuilder(sendedCard['list']),
                    InfoContainer(Colors.yellow[900],Colors.yellow[100],sendedCard['extraInfo'], 18.0,false,FontWeight.normal),
                    HtmlView(data: sendedCard['titleThird']),
                    Divider(color: Colors.white),
                    Text(
                      sendedCard['textSecond'],
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Divider(color: Colors.white),

                    HtmlView(data: sendedCard['titleFourth']),
                    Divider(color: Colors.white),
                    Text(
                      sendedCard['textThird'],
                      style: TextStyle(fontSize: 18.0),
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
