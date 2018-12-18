import 'package:flutter/material.dart';
import '../home_page.dart';
import './drain_categories/drain_card_list.dart';
import '../category_list.dart';
import '../customWidgets/category_button.dart';
import '../customWidgets/floating_custom_button.dart';
import '../customWidgets/navigator_widget.dart';
import 'axis_categories/axis_card_list.dart';
import 'feature_categories/feature_card_list.dart';
import 'other_concepts__categories/other_concepts_card_list.dart';

class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({WidgetBuilder builder, RouteSettings settings})
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    if (settings.isInitialRoute) return child;
    return child;
  }
}

class BasicCategoryList extends StatelessWidget {
  
  final categoriesName = {
    'drain' : 'Odprowadzenia',
    'axis': 'Oś',
    'feature' : 'Cecha, szybkość przesuwu i częstotliwość rytmu',
    'basic_concepts' : 'Podstawowe pojęcia'
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      floatingActionButton: FloatingCustomButton(Colors.blue[900],'tag'),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blue[900],
          child: Container(height: 40.0)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: NavigatorWidget(),
      appBar: AppBar(
        elevation: 0.0,
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
        padding: const EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child:
        Scrollbar(
          child:ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  CategoryButton(DrainCardList(categoriesName['drain'], 'odprowadzenia'), categoriesName['drain']),
                  Divider(),
                  CategoryButton(AxisCardList(categoriesName['axis'],'axis_cards'), categoriesName['axis']),
                  Divider(),
                  CategoryButton(FeatureCardList(categoriesName['feature'],'feature_cards'), categoriesName['feature']),
                  Divider(),
                  CategoryButton(OtherConceptsCardList(categoriesName['basic_concepts'],'other_concepts'), categoriesName['basic_concepts']),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
