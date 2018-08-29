import 'package:flutter/material.dart';
import 'card_list.dart';
import 'category_list.dart';

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

class NestedCategoryList extends StatelessWidget {

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
                          builder: (context) => CardList('Kategoria 1', 1)),
                    );
                  },
                  selected: false,
                  title: Text('Zawal')),
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
                          builder: (context) => CardList('Kategoria2', 1)),
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
        title: new Text("EKG Vademecum"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.arrow_back),
            tooltip: 'Kategorie',
            onPressed: () {
              Navigator.push(
                context,
                MyCustomRoute(builder: (context) => StudyCategoriesList()),
              );
            },
          ),
        ],
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(
                      builder: (context) => CardList('Nested Category', 1)),
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
                    'Nested Category',
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
