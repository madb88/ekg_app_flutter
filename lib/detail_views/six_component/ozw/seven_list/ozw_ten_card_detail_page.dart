import 'package:flutter/material.dart';

import '../../../../customWidgets/info_container.dart';
import '../../../../customWidgets/list_builder.dart';
import '../../../../customWidgets/nested_list_builder.dart';

class OzwTenCardDetailPage extends StatelessWidget {
  final sendedCard;

  OzwTenCardDetailPage(this.sendedCard);

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
                    Visibility(
                      child: Text(
                        sendedCard['text'],
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.justify,

                      ),
                      visible: sendedCard['text'] != '' ? true : false,
                    ),
                    Divider(
                      color: Colors.white
                    ),
                    ListBuilder(sendedCard['list']),
                    NestedListBuilder(sendedCard["nestedList"]),
                    Divider(
                        color: Colors.white
                    ),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redInfoOne'], 18.0, false, FontWeight.normal),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redInfoTwo'], 18.0, false, FontWeight.normal),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redInfoThree'], 18.0, false, FontWeight.normal),
                    Divider(
                        color: Colors.white
                    ),
                    InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redInfoFive'], 18.0, false, FontWeight.bold),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(left: BorderSide(color:  Colors.red[900], width: 5.0)),
                        color: Colors.red[100],
                      ),
                      child: ListTile(
                        leading: Icon(Icons.chevron_right),
                        title: Text(sendedCard['listTile'],
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.normal)),
                      ),
                    ),
                    Divider(
                        color: Colors.white
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.blue[900], width: 2.0),
                        color: Colors.blue[100],
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            sendedCard['separator'],
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          ListBuilder(sendedCard['listTwo']),
                        ],
                      ),
                    ),


//                    Text(
//                      sendedCard['textOne'],
//                      style: TextStyle(fontSize: 20.0),
//                      textAlign: TextAlign.justify,
//                    ),
//                    Divider(),
//                    Visibility(
//                      child: Text(
//                        sendedCard['headTwo'],
//                        style: TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold),
//                        textAlign: TextAlign.justify,
//                      ),
//                      visible: sendedCard['headTwo'] != '' ? true : false,
//                    ),
//                    Divider(
//                        color: Colors.white
//                    ),
//                    Text(
//                      sendedCard['textTwo'],
//                      style: TextStyle(fontSize: 20.0),
//                      textAlign: TextAlign.justify,
//                    ),
//                    Divider(),
//                    Visibility(
//                      child: Text(
//                        sendedCard['headThree'],
//                        style: TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold),
//                        textAlign: TextAlign.justify,
//                      ),
//                      visible: sendedCard['headThree'] != '' ? true : false,
//                    ),
//                    Divider(
//                        color: Colors.white
//                    ),
//                    Text(
//                      sendedCard['textThree'],
//                      style: TextStyle(fontSize: 20.0),
//                      textAlign: TextAlign.justify,
//                    ),
//                    Divider(),
//                    Visibility(
//                      child: Text(
//                        sendedCard['headFour'],
//                        style: TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold),
//                        textAlign: TextAlign.justify,
//                      ),
//                      visible: sendedCard['headThree'] != '' ? true : false,
//                    ),
//                    Divider(
//                      color: Colors.white,
//                    ),
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
