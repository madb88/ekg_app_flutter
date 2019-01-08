import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'six_component_view_controller.dart';
import 'first_nested_category/first_nested_six_component_card_list.dart';
import 'second_nested_category/second_nested_six_component_card_list.dart';
import 'third_nested_category/third_nested_six_component_card_list.dart';
import 'fourth_nested_category/fourth_nested_six_component_card_list.dart';
import 'six_nested_category/six_nested_cards_list.dart';
import 'seven_nested_category/seven_nested_component_card_list.dart';


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
const _test = Colors.white;
class SixComponentCardList extends StatelessWidget {
  final category;
  SixComponentCardList(this.category);

  final categoryNames = {
    'first':'Zaburzenia elektrolitowe',
    'second':'Zaburzenie funkcji tarczycy',
    'third':'Przerost komór i przedsionków',
    'fourth':'Opis martwicy',
    'five':'OZW',
    'six':'Błędy techniczne'
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
                  title: Text('Pozostałe', style: TextStyle(fontSize:25.00, color: Colors.white),textAlign: TextAlign.center,),
                  children: <Widget>[
                    Container(
                      height: 312.00 - appHeight,
                      color: Colors.orange[600],
                      child:
                          Scrollbar(
                            child: ListView(
                              children: <Widget>[
                                CategoryButtonColor(FirstNestedSixComponentCardList(categoryNames['first'],'first_nested_six_component_cards'), categoryNames['first'],Colors.orange[300]),
                                Divider(height: 0.1),
                                CategoryButtonColor(SecondNestedSixComponentCardList(categoryNames['second'],'second_nested_six_component_cards'), categoryNames['second'],Colors.orange[300]),
                                Divider(height: 0.1),
                                CategoryButtonColor(ThirdNestedSixComponentCardList(categoryNames['third'],'third_nested_six_component_cards'), categoryNames['third'],Colors.orange[300]),
                                Divider(height: 0.1),
                                CategoryButtonColor(FourthNestedSixComponentCardList(categoryNames['fourth'],'fourth_nested_six_component_cards'), categoryNames['fourth'],Colors.orange[300]),
                                Divider(height: 0.1),
                                CategoryButtonColor(SixNestedCardsList(categoryNames['five']), categoryNames['five'],Colors.orange[300]),
                                Divider(height: 0.1),
                                CategoryButtonColor(SevenNestedComponentCardList(categoryNames['six'],'seven_nested_six_component_cards'), categoryNames['six'],Colors.orange[300]),
                              ],
                            ),
                          ),
                    ),
                  ]),
            ),
      ),
      body:
      new Container(
          height: MediaQuery.of(context).size.height,
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
                    return
                      Scrollbar(
                        child: ListView.builder(
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
                        ),
                      );

                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
