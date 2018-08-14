import 'package:flutter/material.dart';
import 'dart:convert';
import '../../home_page.dart';
import '../../category_list.dart';
import './../../customWidgets/category_button.dart';
import './../../special_detail_page.dart';
import './../../detail_page.dart';

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

class DrainCategoriesList extends StatelessWidget {
  final drainName;

  DrainCategoriesList(
    this.drainName
  );

  final categoryNames = [
    'Lokalizacja',
    'Odprowadzenia sąsiadujące'
  ];

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: AppBar(
        title: Text(drainName),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.book),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.push(
                context,
                MyCustomRoute(builder: (context) => StudyCategoriesList()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.push(
                context,
                MyCustomRoute(builder: (context) => HomePageList()),
              );
            },
          ),
        ],
      ),
      body:  Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(
              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/odprowadzenia.json'),
                builder: (context, snapshot) {
                  var newItem = json.decode(snapshot.data.toString());
                  return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            newItem[index]['category'] == 2 ? CategoryButton(DetailPage(newItem[index]),categoryNames[1]) : CategoryButton(SpecialDetailPage(newItem[index]),categoryNames[0]),
                            Divider(),
                          ],
                      );
                    },
                    itemCount: newItem == null ? 0 : newItem.length,
                  );
                },
              ),
            ),
            new Container(
              height: 50.0,
              child: new InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: new Container(
                  height: 5.0,
                  decoration: new BoxDecoration(
                    color: Colors.blueAccent,
                    border: new Border.all(color: Colors.white, width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(
                    child: new Text(
                      'Wróć',
                      style: new TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
