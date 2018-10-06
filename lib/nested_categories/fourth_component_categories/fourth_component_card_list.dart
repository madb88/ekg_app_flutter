import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/floating_custom_button.dart';
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
                    return new ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          color: Colors.green[100],
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
                                    Icons.description, color: Colors.black),
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
                  CategoryButtonColor(AdditionalVentricularCardList(categoryNames['first'],'additional_ventricular'), categoryNames['first'],Colors.orange[400]),
                  CategoryButtonColor(SinusRhythmCardList(categoryNames['second'],'sinus_rhythm'), categoryNames['second'],Colors.orange[400]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
