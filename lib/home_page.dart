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
  }
}

class HomePageList extends StatelessWidget {
  final _study = "Kategoria 1";
  final _calculator = "Kategoria 2";

  @override
  Widget build(BuildContext context) {
    var _onTap;
    return new Scaffold(
      appBar: new AppBar(title: new Text("EKG Fiszki")),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => CategoryList()),
                );
              },
              child: new Container(
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: new Text(
                    'Nauka',
                    style: new TextStyle(fontSize: 38.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(),
            new InkWell(
              onTap: () {
                _onTap;
                // Navigator.push(
                //   context,
                //   MyCustomRoute(builder: (context) => CategoryList()),
                // );
              },
              child: new Container(
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.grey,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: new Text(
                    'Kalkulator',
                    style: new TextStyle(fontSize: 38.0, color: Colors.white),
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
