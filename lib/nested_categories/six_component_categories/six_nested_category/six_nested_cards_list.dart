import 'package:flutter/material.dart';
import '../../../home_page.dart';
import '../../../category_list.dart';
import './../../../customWidgets/category_button.dart';
import './../../../customWidgets/navigator_widget.dart';
import './../../../customWidgets/floating_custom_button.dart';
import './../../../customWidgets/card.dart';
import 'first_category/ozw_first_component_card_list.dart';
import 'second_category/ozw_second_component_card_list.dart';
import 'third_category/ozw_third_component_card_list.dart';
import 'fourth_category/ozw_fourth_component_card_list.dart';
import 'seven_category/ozw_seven_component_card_list.dart';
import './../../../detail_views/six_component/ozw/ozw_cards/ozw_fist_wc_detail_page.dart';
import './../../../detail_views/six_component/ozw/ozw_cards/ozw_second_wc_detail_page.dart';
import './../../../detail_views/six_component/ozw/ozw_cards/ozw_three_wc_detail_page.dart';
import './../../../detail_views/six_component/ozw/ozw_cards/ozw_fourth_wc_detail_page.dart';



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
    'fourth':'Ściana dolno-podstawna',
    'five':'Zawał prawej komory',
    'six':'Ostry zespół wieńcowy w pobudzeniach przewiedzionych z blokiem  śródkomorowym',
    'seven':'Stymulator',
    'eight':'Ewolucja zmian podczas OZW',
    'nine':'Dorzut Zawału',
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
                CategoryButton(OzwFourthComponentCardList(categoryNames['fourth']), categoryNames['fourth']),
                Divider(
                  height: 5.0,
                ),
                NewCard(OzwFirstWcDetailPage(categoryNames['five'], 0), categoryNames['five'],''),
                Divider(
                  height: 5.0,
                ),
                NewCard(OzwSecondWcDetailPage(categoryNames['six'], 1), categoryNames['six'],''),
                Divider(
                  height: 5.0,
                ),
                CategoryButton(OzwSevenComponentCardList(categoryNames['seven']), categoryNames['seven']),
                Divider(
                  height: 5.0,
                ),
                NewCard(OzwThreeWcDetailPage(categoryNames['eight'], 2), categoryNames['eight'],''),
                Divider(
                  height: 5.0,
                ),
                NewCard(OzwFourthWcDetailPage(categoryNames['nine'], 3), categoryNames['nine'],''),
              ],
            )
          ],
        ),
      ),
    );
  }
}
