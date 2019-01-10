import 'package:flutter/material.dart';
import '../../../customWidgets/list_builder.dart';
import '../../../customWidgets/normal_text.dart';
import 'dart:convert';
import '../../../detail_views/six_component/six_component_fist_card_detail_page.dart';
import 'package:ekg_cards_app/customRoute.dart';


class FourthNestedThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  FourthNestedThirdCardDetailPage(this.sendedCard);

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
                        Flexible(
                          child: NormalText(
                              sendedCard['chapter1'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(color: Colors.blue[900]),
                    ListBuilder(sendedCard['listOne']),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['chapter2'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      child:
                      FutureBuilder(
                        future: DefaultAssetBundle
                            .of(context)
                            .loadString('data_repo/six_component.json'),
                        builder: (context, snapshot) {
                          var newItem = json.decode(snapshot.data.toString());
                          return new ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return
                                Material(
                                  color: Colors.orange[300],
                                  child: ButtonTheme(
                                    child: InkWell(
                                    onTap: () {
                                    Navigator.push(
                                      context,
                                      MyCustomRoute(builder: (context) => SixComponentFirstCardDetailPage(newItem[7])),
                                    );
                                  },
                                      child: new Container(
                                        height: 50.0,
                                        child: new Center(
                                          child: new Text(
                                            'Przejdź do zsapalenia osierdzia',
                                            style: new TextStyle(
                                                fontSize: 18.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                            },
                            itemCount: 1,
                            shrinkWrap: true,
                          );
                        },
                      ),
                    ),
                    Divider(color: Colors.blue[900]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['chapter3'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(color: Colors.blue[900]),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['textOne'], FontWeight.normal)),
                      ],
                    ),
                    Divider(color: Colors.white),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                          child: NormalText(
                              sendedCard['chapter4'], FontWeight.bold),
                        ),
                      ],
                    ),
                    Divider(color: Colors.blue[900]),
                    ListBuilder(sendedCard['textTwo']),

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
