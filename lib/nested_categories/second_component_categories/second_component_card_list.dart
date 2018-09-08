import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/back_category_button.dart';
import '../stSection/st_section_lowering_card_list.dart';
import '../../customWidgets/category_button_coloredit.dart';
import 'second_component_view_controller.dart';
import 'tachycardia/tachycardia_card_list.dart';
import 'arrhythmia/arrhythmia_card_list.dart';

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
    'first':'Tachykardie zatokowe',
    'second':'Niemiarowość zatokowa',
    'third':'Blok zatokowo-przedsionkowy',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text(category),

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
            CategoryButtonColor(TachycardiaCardList(categoryNames['first'],'tachycardia_cards'), categoryNames['first'],Colors.orange[900]),
            CategoryButtonColor(ArrhythmiaCardList(categoryNames['second'], 'arrhythmia_cards'), categoryNames['second'],Colors.orange[900]),
            CategoryButtonColor(StSectionLoweringCardList(categoryNames['third'], 'st_lowering'), categoryNames['third'],Colors.orange[900]),
            BackCategoryButton("Wróc"),
          ],
        ),
      ),
    );
  }
}