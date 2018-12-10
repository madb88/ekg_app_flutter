import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'st_section_view_controller.dart';
import '../stSection/st_section_elevation_card_list.dart';
import '../stSection/st_section_lowering_card_list.dart';
import '../../customWidgets/category_button_coloredit.dart';


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

class StSectionCardList extends StatelessWidget {
  final category;
  final categoryName;
  StSectionCardList(this.category, this.categoryName);

  final categoryNames = {
    'stSectionElevation':'Uniesienie odcinka ST',
    'stSectionReduction':'Obniżenie odcinka ST',
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
              title: Text('Pozostałe (' + categoryNames['stSectionElevation'] + ' | ' + categoryNames['stSectionReduction'] + ")", style: TextStyle(fontSize:25.00, color: Colors.white),textAlign: TextAlign.center,),
              children: <Widget>[
                Container(
                  height: 190.00 - appHeight,
                  color: Colors.orange[600],
                  child:
                  Scrollbar(
                    child: ListView(
                      children: <Widget>[
                        CategoryButtonColor(StSectionElevationCardList(categoryNames['stSectionElevation'],'st_section_elevation'), categoryNames['stSectionElevation'],Colors.orange[400]),
                        Divider(height: 0.5),
                        CategoryButtonColor(StSectionLoweringCardList(categoryNames['stSectionReduction'], 'st_lowering'), categoryNames['stSectionReduction'],Colors.orange[400]),
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
//            title: Text('Pozostałe (' + categoryNames['stSectionElevation'] + ' | ' + categoryNames['stSectionReduction'] + ")",
//                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
//                textAlign: TextAlign.left
//            ),
//            children: <Widget>[
//              Divider(height: 0.5),
//              CategoryButtonColor(StSectionElevationCardList(categoryNames['stSectionElevation'],'st_section_elevation'), categoryNames['stSectionElevation'],Colors.orange[400]),
//              CategoryButtonColor(StSectionLoweringCardList(categoryNames['stSectionReduction'], 'st_lowering'), categoryNames['stSectionReduction'],Colors.orange[400]),
//            ],
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
                                          StSectionViewController(index, sendedCard)),
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
