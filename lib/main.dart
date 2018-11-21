import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './home_page.dart';
//import 'package:firebase_admob/firebase_admob.dart';

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
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePageList(),
    );
  }
}
