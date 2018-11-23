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


  final categoryNames = {
    'axisOne' : 'II, III dodatnie',
    'axisTwo': 'I, III oba skierowane w dół',
    'axisThree': 'I i III zwrócone do siebie'
  };
   
  

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
        padding: const EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            CategoryButton(CardList(categoryNames['axisOne'], 'category2'), categoryNames['axisOne']),
            Divider(),
            CategoryButton(CardList(categoryNames['axisTwo'], 'category3'), categoryNames['axisTwo']),
            Divider(),
            CategoryButton(CardList(categoryNames['axisThree'], 'category3'), categoryNames['axisThree']),
           
          ],
        ),
      ),
    );
  }
}
