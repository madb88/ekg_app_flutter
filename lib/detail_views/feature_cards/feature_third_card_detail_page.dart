import 'package:flutter/material.dart';
import '../../customWidgets/info_container.dart';
import '../../customWidgets/back_card_button.dart';
import '../../calculator.dart';
import '../../card_list.dart';


class FeatureThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  FeatureThirdCardDetailPage(this.sendedCard);

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
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['firstHead'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
              Divider(),
              InfoContainer(Colors.blue[900],Colors.blue[100],sendedCard['textOne'],20.0,false, FontWeight.normal),
              Divider(),
                    new InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MyCustomRoute(builder: (context) => Calculator()),
                        );
                      },
                      child: new Container(

                        height: 50.0,
                        width: 250.0,

                        decoration: new BoxDecoration(

                          color: Colors.red[800],
                          border: new Border.all(color: Colors.white),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(

                          child: new Text(
                            'Kalkulator',

                            style: new TextStyle(fontSize: 18.0, color: Colors.white, ),
                          ),
                        ),
                      ),
                    ),
                    Divider(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: Text(sendedCard['secondHead'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0))),
                      ],
                    ),
                    Divider(),
                    InfoContainer(Colors.blue[900],Colors.blue[100],sendedCard['secondText'],20.0,false,FontWeight.normal),
                    Divider(),
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
