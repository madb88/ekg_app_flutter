import 'package:flutter/material.dart';
import '../../customWidgets/normal_text.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/list_builder.dart';
import '../../customWidgets/image_widget.dart';

class WavelengthTSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  WavelengthTSecondCardDetailPage(this.sendedCard);

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
                    ListBuilder(sendedCard['list']),
                    Divider(color: Colors.blue[900]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['secondListHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['secondList']),
                    Divider(color: Colors.blue[900]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['thirdListHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['thirdList']),
                    Divider(
                      color: Colors.blue[900]
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['fourthListHead'], FontWeight.bold)),
                      ],
                    ),
                    ListBuilder(sendedCard['fourthList']),
                    Divider(color: Colors.white),
                    InfoContainer(
                        Colors.yellow[900],
                        Colors.yellow[100],
                        sendedCard['infoText2'],
                        18.0,
                        false,
                        FontWeight.normal),
                    Divider(color: Colors.white),
                    InfoContainer(Colors.blue[900], Colors.blue[100],
                        sendedCard['infoText'], 18.0, false, FontWeight.normal),
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
