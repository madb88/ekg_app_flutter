import 'package:flutter/material.dart';
import 'home_page.dart';
import './nested_categories/basic_category.dart';
import './customWidgets/navigator_widget.dart';
import './customWidgets/category_button.dart';
import './nested_categories/ekg_component_categories/component_categories.dart';
import './nested_categories/second_component_categories/second_component_card_list.dart';

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

class StudyCategoriesList extends StatelessWidget {

  final categoriesName = {
    'component' : 'EKG',
    'secondComponent' : 'Rytm zatokowy i jego zaburzenia',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: NavigatorWidget(),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("EKG Vademecum"),
        actions: <Widget>[
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
            CategoryButton(BasicCategoryList(), 'Podstawy'),
            Divider(),
            CategoryButton(ComponentCategoriesList(categoriesName['component']), categoriesName['component']),
            Divider(),
            CategoryButton(SecondComponentCardList(categoriesName['secondComponent']), categoriesName['secondComponent']),
          ],
        ),
      ),
    );
  }
}
