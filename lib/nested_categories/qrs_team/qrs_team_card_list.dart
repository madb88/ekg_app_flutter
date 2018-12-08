import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'qrs_tem_view_controller.dart';
import 'qrs_r_nested_categories.dart';
import 'qrs_team_first_nested_card_list.dart';

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

class QrsTeamCardList extends StatelessWidget {
  final category;
  final categoryName;
  QrsTeamCardList(this.category, this.categoryName);

  final categoryNames = {
    'qrsTeamFirstNested':'Załamek Q i zespół QS',
    'qrsTeamSecondNested':'Załamek R',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: new Text(category),

      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue[900],
          child: Container(
            color: Colors.orange[600],
            child: ExpansionTile(
              trailing: Icon(Icons.list, color: Colors.black),
              title: Text('Pozostałe (' + categoryNames['qrsTeamFirstNested'] + ' | ' + categoryNames['qrsTeamSecondNested'] + ")",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
                  textAlign: TextAlign.left
              ),
              children: <Widget>[
                CategoryButtonColor(QrsTeamFirstNestedCardList(categoryNames['qrsTeamFirstNested'],'qrs_team_first_nested'), categoryNames['qrsTeamFirstNested'],Colors.orange[400]),
                Divider(height: 0.5),
                CategoryButtonColor(QrsRNestedCategoriesList(categoryNames['qrsTeamSecondNested']), categoryNames['qrsTeamSecondNested'],Colors.orange[400]),
              ],
            ),
          ),
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
                    .loadString('data_repo/$categoryName.json'),
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
                                          QrsTeamViewController(index, sendedCard)),
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
          ],
        ),
      ),
    );
  }
}
