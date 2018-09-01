import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/calculator_button.dart';

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
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['listOne'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['listOne'] == null ? 0 : sendedCard['listOne'].length,
                      shrinkWrap: true,
                    ),
                    Divider(
                        height: 10.0,
                        color: Colors.white
                    ),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoBox'], 18.0, false, FontWeight.normal),
                    Divider(
                      height: 10.0,
                      color: Colors.white
                    ),
                    CalculatorButton(),
                    Divider(
                      height: 10.0,
                      color: Colors.white
                    ),
//
//                    Row(
//                      crossAxisAlignment: CrossAxisAlignment.start,
//                      children: <Widget>[
//                        Flexible(child: NormalText(sendedCard['listTwoHead'], FontWeight.bold)),
//                      ],
//                    ),
//
//                    ListView.builder(
//                      physics: ScrollPhysics(),
//                      itemBuilder: (BuildContext context, int index) {
//                        return ListTile(
//                          leading: Icon(Icons.chevron_right),
//                          title: Text(sendedCard['listTwo'][index],style: TextStyle(fontSize: 20.0)),
//                        );
//                      },
//                      itemCount: sendedCard['listTwo'] == null ? 0 : sendedCard['listTwo'].length,
//                      shrinkWrap: true,
//                    ),
                    BackCardButton('Wróć'),
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
