import 'package:flutter/material.dart';
import 'category_list.dart';
import 'calculator.dart';

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
 

  final mainPageButton = {
    "study" : "Nauka",
    "calculator" : "Kalkulator"
  };

  @override
  Widget build(BuildContext context) {
    var _onTap;
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        leading: Icon(
          Icons.settings
          ),

        title: new Text("EKG Fiszki")
        ),
        
      body: new Container(

        padding: const EdgeInsets.all(10.0),
        margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[

            new InkWell(

              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => StudyCategoriesList()),
                );
              },
              child: new Container(
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.blue[800],
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: new Text(
                     mainPageButton['study'],
                    style: new TextStyle(fontSize: 38.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Divider(),
            new InkWell(
              onTap: () {
                _onTap;
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => Calculator()),
                );
              },
              child: new Container(
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.red[700],
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: new Text(
                    mainPageButton['calculator'],
                    style: new TextStyle(fontSize: 38.0, color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text('Wersja: 0.4.0'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
