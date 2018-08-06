import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import './card_list.dart';
import './category_list.dart';
import 'package:firebase_admob/firebase_admob.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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

// class EkgApp extends StatefulWidget {
//   @override
//   _EkgAppState createState() => _EkgAppState();
// }

// class _EkgAppState extends State<EkgApp> {

//   @override
//     void initState() {
//       // FirebaseAdMob.instance.initialize(appId: appId);
//       super.initState();
//     }

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
  AppBar buildAppBar(BuildContext context) {
    return new AppBar(
      title: new Text('EKG APP ver: 0.1.0'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("EKG APP ver: 0.1.0")),
      body: new CategoryList(),
    );
  }
}
