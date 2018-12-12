import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'second_component_view_controller.dart';
import 'tachycardia/tachycardia_card_list.dart';
import 'arrhythmia/arrhythmia_card_list.dart';
import '../five_component_categories/first_nested_five_component_category/first_nested_component_card_list.dart';
import '../../detail_views/five_component_cards/five_component_first_card_detail_page.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;



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

class SecondComponentCardList extends StatelessWidget {

  final category;
  SecondComponentCardList(this.category);

  final categoryNames = {
    'first':'Tachyarytmie zatokowe',
    'second':'Niemiarowość zatokowa',
    'third':'Blok zatokowo - przedsionkowy',
    'fourth':'Zahamowanie zatokowe',
  };

  @override
  Widget build(BuildContext context) {
    AppBar appBar = AppBar(
      elevation: 0.0,
      backgroundColor: Colors.blue[900],
      title: new Text(category),
    );
    double appHeight = appBar.preferredSize.height;
    return new Scaffold(
      appBar: appBar,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[900],
        child:

        Container(
          color: Colors.blue[900],
          child:  ExpansionTile(
              backgroundColor: Colors.orange[900],
              trailing: Icon(Icons.list, color: Colors.white),
              title: Text('Pozostałe (' + categoryNames['first'] + ' | ' + categoryNames['second'] + ' | ' + categoryNames['third'] + ' | ' + categoryNames['fourth'] + ")", style: TextStyle(fontSize:20.00, color: Colors.white),textAlign: TextAlign.center,),
              children: <Widget>[
                Container(
                  height: 320.00 - appHeight,
                  color: Colors.orange[600],
                  child:
                  Scrollbar(
                    child: ListView(
                      children: <Widget>[
                        CategoryButtonColor(TachycardiaCardList(categoryNames['first'],'tachycardia_cards'), categoryNames['first'],Colors.orange[400]),
                        Divider(height: 0.5),
                        CategoryButtonColor(ArrhythmiaCardList(categoryNames['second'], 'arrhythmia_cards'), categoryNames['second'],Colors.orange[400]),
                        Divider(height: 0.5),
                        CategoryButtonColor(FirstNestedComponentCardList(categoryNames['third'],'first_nested_five_component'), categoryNames['third'],Colors.orange[400]),
                        Divider(height: 0.5),
                        FutureBuilder(
                            future: DefaultAssetBundle
                                .of(context)
                                .loadString('data_repo/five_component_cards.json'),
                            builder: (context, snapshot) {
                              var card = json.decode(snapshot.data.toString());
                                if(snapshot.data == null) {
                                  return Container(
                                    child: Center(
                                        child: CircularProgressIndicator()
                                    ),
                                  );
                                } else  {
                                  return CategoryButtonColor(
                                      FiveComponentFirstCardDetailPage(card[3]), categoryNames['fourth'],
                                      Colors.orange[400]);
                                }
                            }),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
//        Container(
//          color: Colors.orange[600],
//          child: ExpansionTile(
//            trailing: Icon(Icons.list, color: Colors.black),
//            title: Container(
//              child: Text('Pozostałe (' + categoryNames['first'] + ' | ' + categoryNames['second'] + ' | ' + categoryNames['third'] + ' | ' + categoryNames['fourth'] + ")",
//                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
//                        textAlign: TextAlign.left
//                    ),
//            ),
//
//            children: <Widget>[
//              CategoryButtonColor(TachycardiaCardList(categoryNames['first'],'tachycardia_cards'), categoryNames['first'],Colors.orange[400]),
//              Divider(height: 0.5),
//              CategoryButtonColor(ArrhythmiaCardList(categoryNames['second'], 'arrhythmia_cards'), categoryNames['second'],Colors.orange[400]),
//              Divider(height: 0.5),
//              CategoryButtonColor(FirstNestedComponentCardList(categoryNames['third'],'first_nested_five_component'), categoryNames['third'],Colors.orange[400]),
//              Divider(height: 0.5),
//              FutureBuilder(
//                  future: DefaultAssetBundle
//                      .of(context)
//                      .loadString('data_repo/five_component_cards.json'),
//                  builder: (context, snapshot) {
//                    var data = json.decode(snapshot.data.toString());
//                    return CategoryButtonColor(FiveComponentFirstCardDetailPage(data[3]), categoryNames['fourth'], Colors.orange[400]);
//
//                  }),
//            ],
//
//          ),
//        ),
      ),
      body:
      new Container(

        padding: const EdgeInsets.all(2.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Flexible(
              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/second_component_cards.json'),
                builder: (context, snapshot) {
                  var newItem = json.decode(snapshot.data.toString());
                  return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        shape: Border.all(color: Colors.blue[900]),
                        elevation: 2.0,
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
                                          SecondComponentViewController(index, sendedCard)),
                                );
                              },
                              trailing: Icon(Icons.description, color: Colors.blue[900]),
                              title: new Text(
                                newItem[index]['title'],
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                              ),
                              subtitle: Text(newItem[index]['subtitle'], style: TextStyle(fontSize: 15.0),),
// ...
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
          ],
        ),
      ),
    );
  }
}
