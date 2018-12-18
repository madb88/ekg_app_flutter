import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'fourth_component_view_controller.dart';
import 'sinus_rhythm/sinus_rhythm_card_list.dart';
import 'additional_ventricular/additional_ventricular_card_list.dart';


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

class FourthComponentCardList extends StatelessWidget {
  final category;
  FourthComponentCardList(this.category);

  final categoryNames = {
    'first':'Dodatkowe pobudzenia komorowe',
    'second':'Rytm komorowy',
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
              title: Text('Pozostałe (' + categoryNames['first'] + ' | ' + categoryNames['second'] + ")",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
                  textAlign: TextAlign.center
              ),
              children: <Widget>[
                Container(
                  height: 200.00 - appHeight,
                  color: Colors.orange[600],
                  child:
                  Scrollbar(
                    child: ListView(
                      children: <Widget>[
              CategoryButtonColor(AdditionalVentricularCardList(categoryNames['first'],'additional_ventricular'), categoryNames['first'],Colors.orange[300]),
              CategoryButtonColor(SinusRhythmCardList(categoryNames['second'],'sinus_rhythm'), categoryNames['second'],Colors.orange[300]),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ),
//      appBar: new AppBar(
//        elevation: 0.0,
//        backgroundColor: Colors.blue[900],
//        title: new Text(category),
//      ),
//      bottomNavigationBar: BottomAppBar(
//        color: Colors.blue[900],
//        child:
//        Container(
//          color: Colors.orange[600],
//          child: ExpansionTile(
//            trailing: Icon(Icons.list, color: Colors.black),
//            title: Container(
//              child: Text('Pozostałe (' + categoryNames['first'] + ' | ' + categoryNames['second'] + ")",
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
//                  textAlign: TextAlign.left
//              ),
//            ),
//            children: <Widget>[
//              CategoryButtonColor(AdditionalVentricularCardList(categoryNames['first'],'additional_ventricular'), categoryNames['first'],Colors.orange[400]),
//              Divider(height: 0.5),
//              CategoryButtonColor(SinusRhythmCardList(categoryNames['second'],'sinus_rhythm'), categoryNames['second'],Colors.orange[400]),
//            ],
//          ),
//        ),
//      ),
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
                    .loadString('data_repo/fourth_component_cards.json'),
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
                        child:
                        ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              elevation: 2.0,
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
                                                FourthComponentViewController(
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
                        )
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
