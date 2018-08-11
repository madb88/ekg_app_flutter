import 'package:flutter/material.dart';
import '../card_list.dart';

class NavigatorWidget extends StatelessWidget {

  final mainCategories = [
    'Podstawy',
    'EKG'
  ];

  final basicNestedCategories = [
    'Odprowadzenia',
    'Os',
    'Cecha, szybkość przesuwu',
    'Częstość akcji',
    'Odcinek, odstęp',
    'Kiedy małe litery'
  ];


  @override
    Widget build(BuildContext context) {
      Drawer drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text(mainCategories[0]),
            children: <Widget>[
              ExpansionTile(
                  title: Text(basicNestedCategories[0])
              ),
              ExpansionTile(
                  title: Text(basicNestedCategories[1])
              ),
              ListTile(
                title: Text(basicNestedCategories[2]),
              ),
               ListTile(
                title: Text(basicNestedCategories[3]),
              ),
               ListTile(
                title: Text(basicNestedCategories[4]),
              ),
               ListTile(
                title: Text(basicNestedCategories[5]),
              ),
            ],
          ),
          ExpansionTile(
            title: Text(mainCategories[1]),
            children: <Widget>[
              ListTile(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MyCustomRoute(
                          builder: (context) => CardList('TESTES', 1)),
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

    return drawer;
    }
}


