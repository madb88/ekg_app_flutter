import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/back_category_button.dart';
import '../../customWidgets/category_button_coloredit.dart';
import 'third_component_view_controller.dart';
import 'shortcuts/shortcuts_card_list.dart';
import 'supraventricular_stimulation/supraventricular_stimulation_card_list.dart';


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

class ThirdComponentCardList extends StatelessWidget {
  final category;
  ThirdComponentCardList(this.category);

  final categoryNames = {
    'first':'Na skróty',
    'second':'Pobudzenia nadkomorowe',
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
                    .loadString('data_repo/third_component_cards.json'),
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
                                          ThirdComponentViewController(index, sendedCard)),
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
            CategoryButtonColor(ShortcutsCardList(categoryNames['first'],'shortcuts_cards'), categoryNames['first'],Colors.orange[900]),
            CategoryButtonColor(SupraventricularStimulationCardList(categoryNames['second'], 'supraventricular_stimulation_cards'), categoryNames['second'],Colors.orange[900]),
//            CategoryButtonColor(StSectionLoweringCardList(categoryNames['third'], 'st_lowering'), categoryNames['third'],Colors.orange[900]),
            BackCategoryButton("Wróc"),
          ],
        ),
      ),
    );
  }
}
