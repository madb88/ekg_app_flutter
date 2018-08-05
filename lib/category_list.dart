import 'package:flutter/material.dart';
import 'card_list.dart';


class CategoryList extends StatelessWidget {


  @override
    Widget build(BuildContext context) {
    return new Scaffold(
    body: new Container(
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new RaisedButton(
          child: Text('CATEGORY'),
          color: Colors.white,
          elevation: 4.0,
          splashColor: Colors.blueGrey,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardList()),
            );
          },
        ),
      ],
    ),
    ),
  );
     
     
        
      
    }

   
}

