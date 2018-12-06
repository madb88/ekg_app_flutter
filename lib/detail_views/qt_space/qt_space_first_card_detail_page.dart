import 'package:flutter/material.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/calculator_button.dart';
import '../../customWidgets/list_builder.dart';

class QtSpaceFirstCardDetailPage extends StatelessWidget {
  final sendedCard;

  QtSpaceFirstCardDetailPage(this.sendedCard);

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
                    Visibility(
                      child: InfoContainer(Colors.orange[900], Colors.orange[100], sendedCard['secondInfoBox'], 18.0, false, FontWeight.bold),
                      visible: sendedCard['secondInfoBox'] != '' ? true : false,
                    ),
                    Divider(color: Colors.white),
                    ListBuilder(sendedCard['listOne']),
                    Divider(
                        height: 10.0,
                        color: Colors.white
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoBox'], 18.0, false, FontWeight.normal),
                    Divider(
                      height: 10.0,
                      color: Colors.white
                    ),
                    CalculatorButton()
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
