import 'package:flutter/material.dart';
import 'category_list.dart';
import 'calculator.dart';
import 'customWidgets/navigator_widget.dart';
import 'package:ekg_cards_app/customRoute.dart';

class HomePageList extends StatelessWidget {
 

  final mainPageButton = {
    "study" : "Nauka",
    "calculator" : "Kalkulator"
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigatorWidget(),
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: new Text("EKG Vademecum")
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
                  border: new Border.all(color: Colors.white, width: 0.5),
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
            Divider(
              height: 20.0,
              color: Colors.blue[900]
            ),
            new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => Calculator()),
                );
              },
              child: new Container(
                height: 100.0,
                decoration: new BoxDecoration(
                  color: Colors.red[700],
                  border: new Border.all(color: Colors.white, width: 0.5),
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
                Text('Wersja: 0.10.0'),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
