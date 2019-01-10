import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'qrs_tem_view_controller.dart';
import 'qrs_r_nested_categories.dart';
import 'qrs_team_first_nested_card_list.dart';
import 'package:ekg_cards_app/customRoute.dart';

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
                    height: 190.00 - appHeight,
                    color: Colors.orange[600],
                    child:
                    Scrollbar(
                      child: ListView(
                        children: <Widget>[
                          CategoryButtonColor(QrsTeamFirstNestedCardList(categoryNames['qrsTeamFirstNested'],'qrs_team_first_nested'), categoryNames['qrsTeamFirstNested'],Colors.orange[400]),
                            Divider(height: 0.5),
                            CategoryButtonColor(QrsRNestedCategoriesList(categoryNames['qrsTeamSecondNested']), categoryNames['qrsTeamSecondNested'],Colors.orange[400]),
                        ],
                      ),
                    ),
                  ),
                ]),
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
