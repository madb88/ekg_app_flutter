import 'package:flutter/material.dart';
import '../home_page.dart';
import './drain_categories/drain_card_list.dart';
import '../category_list.dart';
import '../customWidgets/category_button.dart';
import '../card_list.dart';

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return child;
    // return new FadeTransition(opacity: animation, child: child);
  }
}

class BasicCategoryList extends StatelessWidget {
  
  final categoriesName = [
    'Odprowadzenia',
    'Oś',
    'Cecha, szybkość przesuwu',
    'Częstość akcji',
    'Odcinek, odstęp',
    'Kiedy małe litery'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Podstawy"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.book),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.push(
                context,
                MyCustomRoute(builder: (context) => StudyCategoriesList()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.home),
            tooltip: 'Menu',
            onPressed: () {
              Navigator.push(
                context,
                MyCustomRoute(builder: (context) => HomePageList()),
              );
            },
          ),
        ],
      ),
      body:  Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            CategoryButton(DrainCardList(categoriesName[0], 'odprowadzenia'), categoriesName[0]),
            Divider(),
            CategoryButton(CardList(categoriesName[1],'axis_cards'), categoriesName[1]),           
            Divider(),
            CategoryButton(CardList(categoriesName[2],2), categoriesName[2]),    
            Divider(),
            CategoryButton(CardList(categoriesName[3],2), categoriesName[3]),       
            Divider(),
            CategoryButton(CardList(categoriesName[4],2), categoriesName[4]),   
            Divider(),
            CategoryButton(CardList(categoriesName[5],2), categoriesName[5]),   
          ],
        ),
      ),
    );
  }
}
