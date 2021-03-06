import 'package:flutter/material.dart';
import 'home_page.dart';
import './nested_categories/basic_category.dart';
import './customWidgets/navigator_widget.dart';
import './customWidgets/category_button.dart';
import './customWidgets/floating_custom_button.dart';
import './nested_categories/ekg_component_categories/component_categories.dart';
import './nested_categories/second_component_categories/second_component_card_list.dart';
import './nested_categories/third_component_categories/third_component_card_list.dart';
import './nested_categories/fourth_component_categories/fourth_component_card_list.dart';
import './nested_categories/five_component_categories/five_basic_component_categories.dart';
import './nested_categories/six_component_categories/six_component_card_list.dart';
import 'customRoute.dart';

class StudyCategoriesList extends StatelessWidget {

  final categoriesName = {
    'component' : 'EKG',
    'secondComponent' : 'Rytm zatokowy i jego zaburzenia',
    'thirdComponent' : 'Arytmie nadkomorowe',
    'fourthComponent' : 'Komorowe zaburzenia rytmu',
    'fiveComponent' : 'Zaburzenia automatyzmu i przewodzenia / stymulator',
    'sixComponent' : 'Choroby',
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
        padding: const EdgeInsets.all(5.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child:
        ListView(
          children: <Widget>[
            CategoryButton(BasicCategoryList(), 'Podstawy'),
            Divider(),
            CategoryButton(ComponentCategoriesList(categoriesName['component']), categoriesName['component']),
            Divider(),
            CategoryButton(SecondComponentCardList(categoriesName['secondComponent']), categoriesName['secondComponent']),
            Divider(),
            CategoryButton(ThirdComponentCardList(categoriesName['thirdComponent']), categoriesName['thirdComponent']),
            Divider(),
            CategoryButton(FourthComponentCardList(categoriesName['fourthComponent']), categoriesName['fourthComponent']),
            Divider(),
            CategoryButton(FiveBasicComponentCategoriesList(categoriesName['fiveComponent']), categoriesName['fiveComponent']),
            Divider(),
            CategoryButton(SixComponentCardList(categoriesName['sixComponent']), categoriesName['sixComponent']),
          ],
        ),
      ),
    );
  }
}
