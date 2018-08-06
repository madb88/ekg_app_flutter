import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './category_list.dart';
import 'dart:async';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(EkgApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new MyHomePage(),
//     );
//   }
// }

class EkgApp extends StatefulWidget {
  @override
  _EkgAppState createState() => _EkgAppState();
}

class _EkgAppState extends State<EkgApp> {

  @override
  void initState() {
    // FirebaseAdMob.instance.initialize(appId: appId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
       routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new CategoryList()
    },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color: Colors.white),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  
                    Image.asset('images/logo.png'),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                  
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    ),
                    new Text(
                  'ver: 0.1.3',
                  style: new TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }
}
