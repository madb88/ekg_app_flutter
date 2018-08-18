import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../detail_views/feature_cards/feature_first_card_detail_page.dart';
import '../../detail_views/feature_cards/feature_second_card_detail_page.dart';
import '../../detail_views/feature_cards/feature_third_card_detail_page.dart';

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return child;
    // return new FadeTransition(opacity: animation, child: child);
  }
}

class FeatureCardList extends StatelessWidget {
  final category;
  final categoryName;
  FeatureCardList(this.category, this.categoryName);

  switchSection(categoryNumber){
    switch(categoryNumber['category']){
      case 1:
        return FeatureFirstCardDetailPage(categoryNumber);
        break;
      case 2:
        return FeatureSecondCardDetailPage(categoryNumber);
        break;
      case 3:
        return FeatureThirdCardDetailPage(categoryNumber);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text(category),
        
      ),
      body: new Container(

        padding: const EdgeInsets.all(5.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(

              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/$categoryName.json'),
                builder: (context, snapshot) {
                  var newItem = json.decode(snapshot.data.toString());
                  return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            new ListTile(
                              
                              onTap: () {
                                final sendedCard = newItem;
                                Navigator.push(
                                  context,
                                  new MyCustomRoute(
                                      builder: (context) =>
                                          switchSection(sendedCard[index])),
                                );
                              },
                              trailing: Icon(Icons.description, color: Colors.blue[900]),
                              title: new Text(
                                newItem[index]['title'],
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                              ), // ...
                            ),
                            new Divider(
                              height: 2.0,
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: newItem == null ? 0 : newItem.length,
                  );
                },
              ),
            ),
            new Container(
              height: 50.0,
              child: new InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: new Container(
                  height: 5.0,
                  decoration: new BoxDecoration(
                    color: Colors.blue[800],
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Wróć',
                      style: new TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}