import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import 'package:flutter_html_view/flutter_html_view.dart';
import '../../../customWidgets/nested_list_builder.dart';

class ThirdNestedSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  ThirdNestedSecondCardDetailPage(this.sendedCard);

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
                    Column(
                      children: <Widget>[
                        HtmlView(data: sendedCard['titleOne']),
                        Text(
                          sendedCard['textOne'],
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                                child:
                                    HtmlView(data: sendedCard['titleSecond'])),
                          ],
                        ),
                        Divider(color: Colors.white),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Text(sendedCard['textSecond'],
                                  style: TextStyle(fontSize: 18.0)),
                            ),
                          ],
                        ),
                        Divider(color: Colors.white),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Text(sendedCard['listHead'],
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    Divider(color: Colors.white),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.info_outline, color: Colors.yellow[900]),
                        Flexible(
                          child: Text(sendedCard['addedInfo'],
                              style: TextStyle(fontSize: 15.0)),
                        ),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100],
                        sendedCard['infoText'], 18.0, false, FontWeight.bold),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['firstListTile'],
                          style: TextStyle(fontSize: 20.0)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.subdirectory_arrow_right),
                        title: Text(sendedCard['firstNestedListTile'],
                            style: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                    Divider(color: Colors.white),
                    Text(sendedCard['text'],
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    Divider(color: Colors.white),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.subdirectory_arrow_right),
                        title: Text(sendedCard['secondNestedListTile'],
                            style: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['secondListTile'],
                          style: TextStyle(fontSize: 20.0)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        leading: Icon(Icons.subdirectory_arrow_right),
                        title: Text(sendedCard['thirdNestedListTile'],
                            style: TextStyle(fontSize: 20.0)),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['thirdListTile'],
                          style: TextStyle(fontSize: 20.0)),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                      child: NestedListBuilder(sendedCard['thirdNestedList']),
                    ),
                    ListBuilder(sendedCard['lastList']),
                    Divider(color: Colors.white),
                    HtmlView(data: sendedCard['titleThird']),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(sendedCard['textThird'],
                              style: TextStyle(fontSize: 18.0)),
                        ),
                      ],
                    ),
                    HtmlView(data: sendedCard['titleFourth']),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(sendedCard['textFourth'],
                              style: TextStyle(fontSize: 18.0)),
                        ),
                      ],
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
