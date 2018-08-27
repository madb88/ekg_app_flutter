import 'package:flutter/material.dart';
import '../card_list.dart';
import '../customWidgets/list_element.dart';
import 'dart:convert';
import './../nested_categories/drain_categories/drain_card_list.dart';

class NavigatorWidget extends StatelessWidget {
  final mainCategories = ['Podstawy', 'EKG'];

  final basicNestedCategories = [
    'Odprowadzenia',
    'Oś',
    'Cecha, szybkość przesuwu',
    'Częstość akcji',
    'Odcinek, odstęp',
    'Kiedy małe litery'
  ];

  final drainNestedCategories = ['Lokalizacja', 'Odprowadzenia sąsiadujące'];

  final axisNestedCategories = [
    'II, III (+)',
    'I, III oba skierowane w dół',
    'I, III rozbierzne',
    'I, III skierowane do siebie'
  ];

  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: FutureBuilder(
          future: DefaultAssetBundle
              .of(context)
              .loadString('data_repo/odprowadzenia.json'),
          builder: (context, snapshot) {
            var data = json.decode(snapshot.data.toString());
            return new ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
              Container(
              height: 88.0,
                child:
                DrawerHeader(
                  child: Text('Spis treści', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                  ),
                ),
              ),
                ExpansionTile(
                  title: Text(
                    mainCategories[0],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    
                    ListElement(DrainCardList(basicNestedCategories[0], 'odprowadzenia'),basicNestedCategories[0]),
                    ListElement(DrainCardList(basicNestedCategories[1], 'axis_cards'),basicNestedCategories[1]),

                    ListElement(CardList(basicNestedCategories[2], 1),
                        basicNestedCategories[2]),
                    ListElement(CardList(basicNestedCategories[3], 1),
                        basicNestedCategories[3]),
                    ListElement(CardList(basicNestedCategories[4], 1),
                        basicNestedCategories[4]),
                    ListElement(CardList(basicNestedCategories[5], 1),
                        basicNestedCategories[5]),
                  ],
                ),
                ExpansionTile(title: Text(mainCategories[1])),
                Divider(),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: Text("Zamknij"),
                  trailing: Icon(Icons.close),
                )
              ],
            );
          }),
    );

    return drawer;
  }
}
