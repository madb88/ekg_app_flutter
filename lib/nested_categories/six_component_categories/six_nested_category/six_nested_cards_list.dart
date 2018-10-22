import 'package:flutter/material.dart';
import '../../../home_page.dart';
import '../../../category_list.dart';
import './../../../customWidgets/category_button.dart';
import './../../../customWidgets/navigator_widget.dart';
import './../../../customWidgets/floating_custom_button.dart';
import 'first_category/ozw_first_component_card_list.dart';
import 'second_category/ozw_second_component_card_list.dart';
import 'third_category/ozw_third_component_card_list.dart';

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

class SixNestedCardsList extends StatelessWidget {
  final componentName;

  SixNestedCardsList(
    this.componentName
  );

  final categoryNames = {
    'first':'Ściana przednia',
    'second':'Ściana boczna',
    'third':'Ściana dolna',
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
        backgroundColor: Colors.blue[900],
        title: Text(componentName),
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
                CategoryButton(OzwFirstComponentCardList(categoryNames['first']), categoryNames['first']),
                Divider(
                  height: 5.0,
                ),
                CategoryButton(OzwSecondComponentCardList(categoryNames['second']), categoryNames['second']),
                Divider(
                  height: 5.0,
                ),
                CategoryButton(OzwThirdComponentCardList(categoryNames['third']), categoryNames['third']),
                Divider(
                  height: 5.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
