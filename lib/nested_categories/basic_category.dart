import 'package:flutter/material.dart';
import '../nested_category1.dart';
import '../home_page.dart';
import './drain_categories/drain_categories.dart';
import './axis_categories/axis_categories.dart';
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
            CategoryButton(DrainCategoriesList(categoriesName[0]), categoriesName[0]),
            Divider(),
            CategoryButton(AxisCategoriesList(categoriesName[1]), categoriesName[1]),           
            Divider(),
            CategoryButton(CardList(categoriesName[2],2), categoriesName[2]),           
          ],
        ),
      ),
    );
  }
}
