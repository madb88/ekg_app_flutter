import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'six_component_view_controller.dart';
import 'first_nested_category/first_nested_six_component_card_list.dart';
import 'second_nested_category/second_nested_six_component_card_list.dart';
import 'third_nested_category/third_nested_six_component_card_list.dart';
import 'fourth_nested_category/fourth_nested_six_component_card_list.dart';


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

class SixComponentCardList extends StatelessWidget {
  final category;
  SixComponentCardList(this.category);

  final categoryNames = {
    'first':'Zaburzenia elektrolitowe',
    'second':'Zaburzenie funkcji tarczycy',
    'third':'Przerost',
    'fourth':'Opis martwicy',
    'five':'OZW',
    'six':'Błędy techniczne'
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
                    .loadString('data_repo/six_component.json'),
                builder: (context, snapshot) {
                  if(snapshot.data == null){
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator()
                      ),
                    );
                  } else {
                    var newItem = json.decode(snapshot.data.toString());
                    return new ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          shape: Border.all(color: Colors.blue[900]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[

                              new ListTile(
                                onTap: () {
                                  final sendedCard = newItem;
                                  Navigator.push(
                                    context,
                                     MyCustomRoute(
                                        builder: (context) =>
                                            SixComponentViewController(
                                                index, sendedCard)),
                                  );
                                },
                                trailing: Icon(
                                    Icons.description, color: Colors.blue[900]),
                                title: Text(
                                  newItem[index]['title'],
                                  style:
                                   TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                subtitle: Text(newItem[index]['subtitle'],
                                  style: TextStyle(fontSize: 15.0),),
// ...
                              ),
                               Divider(
                                height: 2.0,
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: newItem == null ? 0 : newItem.length,
                    );
                  }
                },
              ),
            ),
            Container(
              color: Colors.orange[600],
              child: ExpansionTile(
                trailing: Icon(Icons.list, color: Colors.black),
                title: Text('Podkategorie',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
                    textAlign: TextAlign.left
                ),
                children: <Widget>[
                  CategoryButtonColor(FirstNestedSixComponentCardList(categoryNames['first'],'first_nested_six_component_cards'), categoryNames['first'],Colors.orange[400]),
                  CategoryButtonColor(SecondNestedSixComponentCardList(categoryNames['second'],'second_nested_six_component_cards'), categoryNames['second'],Colors.orange[400]),
                  CategoryButtonColor(ThirdNestedSixComponentCardList(categoryNames['third'],'third_nested_six_component_cards'), categoryNames['third'],Colors.orange[400]),
                  CategoryButtonColor(FourthNestedSixComponentCardList(categoryNames['fourth'],'fourth_nested_six_component_cards'), categoryNames['fourth'],Colors.orange[400]),
                  CategoryButtonColor(SecondNestedSixComponentCardList(categoryNames['five'],'second_nested_six_component_cards'), categoryNames['five'],Colors.orange[400]),
                  CategoryButtonColor(SecondNestedSixComponentCardList(categoryNames['six'],'second_nested_six_component_cards'), categoryNames['six'],Colors.orange[400]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
