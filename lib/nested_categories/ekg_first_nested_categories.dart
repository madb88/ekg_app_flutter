import 'package:flutter/material.dart';
import '../home_page.dart';
import '../category_list.dart';
import '../customWidgets/category_button.dart';
import '../customWidgets/navigator_widget.dart';
import '../nested_categories/ekg_component_categories/component_categories.dart';
import 'package:ekg_cards_app/customRoute.dart';

class EkgFirstNestedCategoryList extends StatelessWidget {
  
  final categoriesName = {
    'component' : 'Składowe zapisu',
  };
 

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigatorWidget(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: Text("EKG"),
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
        padding: const EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CategoryButton(ComponentCategoriesList(categoriesName['component']), categoriesName['component']),
                Divider(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
