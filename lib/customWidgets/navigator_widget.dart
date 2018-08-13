import 'package:flutter/material.dart';
import '../card_list.dart';
import '../customWidgets/list_element.dart';

class NavigatorWidget extends StatelessWidget {

  final mainCategories = [
    'Podstawy',
    'EKG'
  ];

  final basicNestedCategories = [
    'Odprowadzenia',
    'Oś',
    'Cecha, szybkość przesuwu',
    'Częstość akcji',
    'Odcinek, odstęp',
    'Kiedy małe litery'
  ];

  final drainNestedCategories = [
    'Lokalizacja',
    'Odprowadzenia sąsiadujące'
  ];

  final axisNestedCategories = [
    'II, III (+)',
    'I, III oba skierowane w dół',
    'I, III rozbierzne',
    'I, III skierowane do siebie'
  ];


  @override
    Widget build(BuildContext context) {
      Drawer drawer = Drawer(
      child: ListView(
        children: <Widget>[
          ExpansionTile(
            title: Text(mainCategories[0], style: TextStyle(fontWeight: FontWeight.bold),),
            children: <Widget>[
              ExpansionTile(
                  title: Text(basicNestedCategories[0], style: TextStyle(fontWeight: FontWeight.bold)),
                  children: <Widget>[
                    ListElement(CardList(drainNestedCategories[0], 1), drainNestedCategories[0]),
                    ListElement(CardList(drainNestedCategories[1], 2), drainNestedCategories[1]),
                  ]
              ),
              ExpansionTile(
                  title: Text(basicNestedCategories[1], style: TextStyle(fontWeight: FontWeight.bold)),
                  children: <Widget>[
                    ListElement(CardList(axisNestedCategories[0], 1), axisNestedCategories[0]),
                    ListElement(CardList(axisNestedCategories[1], 2), axisNestedCategories[1]),
                    ListElement(CardList(axisNestedCategories[2], 1), axisNestedCategories[2]),
                    ListElement(CardList(axisNestedCategories[3], 2), axisNestedCategories[3]),
                  ],
              ),
              ListElement(CardList(basicNestedCategories[2], 1), basicNestedCategories[2]),
              ListElement(CardList(basicNestedCategories[3], 1), basicNestedCategories[3]),
              ListElement(CardList(basicNestedCategories[4], 1), basicNestedCategories[4]),
              ListElement(CardList(basicNestedCategories[5], 1), basicNestedCategories[5]),
            ],
          ),
          ExpansionTile(
            title: Text(mainCategories[1])
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

