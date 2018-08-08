import 'package:flutter/material.dart';
import 'card_list.dart';
import 'nested_category1.dart';
import 'home_page.dart';

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

class CategoryList extends StatelessWidget {
  final _category1 = "Kategoria 1";
  final _category2 = "Kategoria 2";
  final _category3 = "Kategoria 3";
  final _category4 = "Kategoria 4";
  final _category5 = "Kategoria 5";
  final _category6 = "Kategoria 6";
  final _category7 = "Kategoria 7";
  final _category8 = "Kategoria 8";

  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text("Kategoria1"),
            children: <Widget>[
              ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MyCustomRoute(
                          builder: (context) => CardList(_category1, 1)),
                    );
                  },
                  selected: false,
                  title: Text('Zawal')),
              ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MyCustomRoute(
                          builder: (context) => CardList(_category1, 1)),
                    );
                  },
                  selected: false,
                  title: Text('Tachykardia')),
            ],
          ),
          ExpansionTile(
            title: Text("Kategoria 2"),
            children: <Widget>[
              ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MyCustomRoute(
                          builder: (context) => CardList(_category1, 1)),
                    );
                  },
                  selected: false,
                  title: Text('Zawal 3')),
            ],
          ),
          Divider(),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: Text("Zamknij"),
            trailing: Icon(Icons.close),
          )
        ],
      ),
    );

    return new Scaffold(
      drawer: drawer,
      appBar: new AppBar(
        title: new Text("EKG Podstawy"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home),
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
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => NestedCategoryList()),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 1',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category2, 2)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 2',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category3, 3)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 3',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category4, 4)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 4',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category5, 5)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 5',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category6, 6)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 6',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category7, 7)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 7',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            new Divider(),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CardList(_category8, 8)),
                );
              },
              child: new Container(
                //width: 100.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Kategoria 8',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
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
