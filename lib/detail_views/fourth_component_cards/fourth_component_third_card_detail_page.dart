import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/normal_text.dart';

class FourthComponentThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  FourthComponentThirdCardDetailPage(
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
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['headOne'], 18.0, false, FontWeight.bold),
                    Divider(height: 5.0, color: Colors.white),
                    NormalText(sendedCard['textOne'], FontWeight.normal),
                    Divider(height: 10.0, color: Colors.white),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['headTwo'], 18.0, false, FontWeight.bold),
                    Divider(height: 5.0, color: Colors.white),
                    NormalText(sendedCard['textTwo'], FontWeight.normal),
                    Divider(height: 10.0, color: Colors.white),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['headThree'], 18.0, false, FontWeight.bold),
                    Divider(height: 5.0, color: Colors.white),
                    NormalText(sendedCard['textThree'], FontWeight.normal),
                    Divider(height: 10.0, color: Colors.white),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['headFourth'], 18.0, false, FontWeight.bold),
                    Divider(height: 5.0, color: Colors.white),
                    NormalText(sendedCard['textFourth'], FontWeight.normal),
                    Divider(height: 10.0, color: Colors.white),
                    InfoContainer(Colors.blue[900], Colors.blue[100], sendedCard['headFive'], 18.0, false, FontWeight.bold),
                    Divider(height: 5.0, color: Colors.white),
                    NormalText(sendedCard['textFive'], FontWeight.normal),
                    Divider(height: 10.0, color: Colors.white),

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
