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
import 'dart:convert';
import '../../detail_views/five_component_cards/five_component_first_card_detail_page.dart';
import 'package:ekg_cards_app/customRoute.dart';

class FiveBasicComponentCategoriesList extends StatelessWidget {
  final componentName;

  FiveBasicComponentCategoriesList(
    this.componentName
  );

  final categoryNames = {
    'first':'Zaburzenia funkcji węzła zatokowego',
    'second':'Przewodzenie Przedsionkowo-komorowe',
    'third':'Zaburzenia przewodzenia śródkomorowego',
    'fourth':'Stymulator',
    'five': "Układ przewodzący serca"

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
                FutureBuilder(
                    future: DefaultAssetBundle
                        .of(context)
                        .loadString('data_repo/uklad.json'),
                    builder: (context, snapshot) {
                      var card = json.decode(snapshot.data.toString());
                      if(snapshot.data == null) {
                        return Container(
                          child: Center(
                              child: CircularProgressIndicator()
                          ),
                        );
                      } else  {
                        return CategoryButton(FiveComponentFirstCardDetailPage(card[0]), card[0]['title']);
                      }
                    }),
                Divider(
                  height: 5.0,
                ),
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
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
