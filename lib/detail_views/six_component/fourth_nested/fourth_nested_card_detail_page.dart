import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';
import '../../../customWidgets/normal_text.dart';

class FourthNestedCardDetailPage extends StatelessWidget {
  final sendedCard;

  FourthNestedCardDetailPage(this.sendedCard);

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
                        Flexible(child: NormalText(sendedCard['firstHead'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['secondHead'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['list']),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['thirdHead'], FontWeight.normal)),
                      ],
                    ),
                    ListBuilder(sendedCard['secondList']),
                    Divider(color: Colors.blue),
                    ListBuilder(sendedCard['thirdList']),

                    Row(
                      children: <Widget>[
                        Flexible(
                        child: InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redHead'], 18.0, false,FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: InfoContainer(Colors.red[900], Colors.red[100], sendedCard['redInfo'], 18.0, false,FontWeight.normal),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InfoContainer(Colors.yellow[900], Colors.yellow[200],
                            sendedCard['extraInfoHead'], 18.0, false, FontWeight.bold),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(left: BorderSide(color:  Colors.yellow[900], width: 5.0)),
                            color: Colors.yellow[100],
                          ),
                          child: ListBuilder(sendedCard['infoList']),
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
