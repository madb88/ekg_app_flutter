import 'package:flutter/material.dart';
import '../../home_page.dart';
import '../../category_list.dart';
import './../../customWidgets/category_button.dart';
import './../../customWidgets/navigator_widget.dart';
import 'five_component_card_list.dart';
import 'five_second_component_card_list.dart';
import 'five_third_component_card_list.dart';
import 'five_fourth_component_card_list.dart';
import './../../customWidgets/floating_custom_button.dart';



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

class FiveBasicComponentCategoriesList extends StatelessWidget {
  final componentName;

  FiveBasicComponentCategoriesList(
    this.componentName
  );

  final categoryNames = {
    'first':'Zaburzenia funkcji węzła zatokowego',
    'second':'Przewodzenie Przedsionkowo-komorowe',
    'third':'Zaburzenia przewodzenia śródkomorowego',
    'fourth':'Stymulator'
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
        padding: const EdgeInsets.all(5.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CategoryButton(FiveComponentCardList(categoryNames['first']), categoryNames['first']),
                Divider(
                  height: 5.0,
                ),
                CategoryButton(FiveSecondComponentCardList(categoryNames['second']), categoryNames['second']),
                Divider(
                  height: 5.0,
                ),
                CategoryButton(FiveThirdComponentCardList(categoryNames['third']), categoryNames['third']),
                Divider(
                  height: 5.0,
                ),
                CategoryButton(FiveFourthComponentCardList(categoryNames['fourth']), categoryNames['fourth']),
                Divider(
                  height: 5.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
