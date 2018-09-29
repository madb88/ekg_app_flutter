import 'package:flutter/material.dart';
import '../../../customWidgets/back_card_button.dart';
import '../../../customWidgets/info_container.dart';

class ShortcutsThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  ShortcutsThirdCardDetailPage(
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
                        InfoContainer(Colors.yellow[900], Colors.yellow[300], sendedCard['listHead'], 20.0, false, FontWeight.bold),
                        Divider(
                          color: Colors.blue[100]
                        ),
                        InfoContainer(Colors.yellow[900], Colors.yellow[300], sendedCard['listHead2'], 20.0, false, FontWeight.bold),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['list2Info'], 20.0, false, FontWeight.normal),
                        Divider(
                            color: Colors.blue[100]
                        ),
                        InfoContainer(Colors.yellow[900], Colors.yellow[300], sendedCard['listHead3'], 20.0, false, FontWeight.bold),
                        InfoContainer(Colors.yellow[900], Colors.yellow[100], sendedCard['list3Info'], 20.0, false, FontWeight.normal),
                        Divider(
                            color: Colors.blue[100]
                        ),
                        InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['infoBox'], 20.0, false, FontWeight.normal),
                        Divider(
                            color: Colors.white
                        ),
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
