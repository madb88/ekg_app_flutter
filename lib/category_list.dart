import 'package:flutter/material.dart';
import 'card_list.dart';


class CategoryList extends StatelessWidget {


  @override
    Widget build(BuildContext context) {
    return new Scaffold(
    body: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new RaisedButton(
          child: Text('CATEGORY'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CardList()),
            );
          },
        ),
      ],
    ),
  );
     
     
        
      
    }

   
}

