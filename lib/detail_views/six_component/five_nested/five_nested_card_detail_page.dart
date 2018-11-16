import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/nested_list_builder.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/normal_text.dart';

class FiveNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  FiveNestedCardDetailPage(this.sendedCard);

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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['firstPartHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['firstHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['firstListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['secondListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    NestedListBuilder(sendedCard['firstNestedList']),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['extraInfo'],18.0,false,FontWeight.normal),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['secondHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['thirdListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['thirdHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['fourthListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['fourthHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['fiveListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['fiveHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['sixListTile'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
                    ),
                    Divider(color: Colors.blue),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['secondPartHead'], FontWeight.bold)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['firstText'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['sevenListTile'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['secondText'],
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.normal)),
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
