import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/info_container.dart';

class ShortcutsSecondCardDetailPage extends StatelessWidget {
  final sendedCard;

  ShortcutsSecondCardDetailPage(
      this.sendedCard);

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
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['listHead'], 20.0, false, FontWeight.bold),
                        ListBuilder(sendedCard['list']),
                        Divider(),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['listHead2'], 20.0, false, FontWeight.bold),
                        ListBuilder(sendedCard['list2']),
                        Divider(),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['listHead3'], 20.0, false, FontWeight.bold),
                        ListBuilder(sendedCard['list3']),
                        Divider(),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['listHead4'], 20.0, false, FontWeight.bold),
                        ListBuilder(sendedCard['list4']),
                        Divider(),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['listHead5'], 20.0, false, FontWeight.bold),
                        ListBuilder(sendedCard['list5']),
                        Divider(),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['listHead6'], 20.0, false, FontWeight.bold),
                        ListBuilder(sendedCard['list6'])
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
