import 'package:flutter/material.dart';
import '../../home_page.dart';
import '../../card_list.dart';
import '../../category_list.dart';
import './../../customWidgets/category_button.dart';

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

class AxisCategoriesList extends StatelessWidget {
  final axisName;

  AxisCategoriesList(this.axisName);

  final categoryNames = [
    'II, III (+)',
    'I, III oba skierowane w dół',
    'I, III rozbierzne',
    'I, III skierowane do siebie'
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(axisName),
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
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            CategoryButton(CardList(categoryNames[0], 'category2'), categoryNames[0]),
            Divider(),
            CategoryButton(CardList(categoryNames[1], 'category3'), categoryNames[1]),
            Divider(),
            CategoryButton(CardList(categoryNames[2], 'category3'), categoryNames[2]),
            Divider(),
            CategoryButton(CardList(categoryNames[3], 2), categoryNames[3]),
          ],
        ),
      ),
    );
  }
}
