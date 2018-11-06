import 'package:flutter/material.dart';
import '../card_list.dart';

class NewCard extends StatelessWidget {

  final routeName;
  final buttonText;
  final subText;


  NewCard(
      this.routeName,
      this.buttonText,
      this.subText
      );

  @override
  Widget build(BuildContext context) {
    Card newCard =
    Card(
      elevation: 2.0,
      shape: Border.all(color: Colors.blue[900]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

          new ListTile(
            onTap: () {
              Navigator.push(
                context,
                MyCustomRoute(
                    builder: (context) => routeName),
              );
            },
            trailing: Icon(
                Icons.description, color: Colors.blue[900]),
            title: Text(
              buttonText,
              style:
              TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 22.0),
            ),
            subtitle: Text(subText,
              style: TextStyle(fontSize: 15.0),),
            // ...
          ),
          Divider(
            height: 2.0,
          ),
        ],
      ),
    );
    return newCard;
  }

}