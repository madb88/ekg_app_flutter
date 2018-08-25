import 'package:flutter/material.dart';
import '../../home_page.dart';
import '../../category_list.dart';
import './../../customWidgets/category_button.dart';
import './../../detail_views/wavelength_cards/wavelength_normal_card_detail_page.dart';
import 'dart:convert';
import 'incorrect_wave_r_view_controller.dart';
import 'incorrect_wave_r_card_list.dart';

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

class QrsRNestedCategoriesList extends StatelessWidget {
  final componentName;

  QrsRNestedCategoriesList(this.componentName);

  final categoryNames = {
    'wavelengthPlusR': 'Prawidłowy',
    'wavelengthMinusR': 'Nieprawidłowy Załamek R',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
      body: Container(
        padding: const EdgeInsets.all(20.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: FutureBuilder(
            future: DefaultAssetBundle
                .of(context)
                .loadString('data_repo/components.json'),
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString());
              return new ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    CategoryButton(WaveLengthNormalCardDetailPage(data[0]), categoryNames['wavelengthPlusR']),
                    Divider(),
                    CategoryButton(IncorrectWaveRCardList(categoryNames['wavelengthMinusR'], 'incorrect_wave_r'), categoryNames['wavelengthMinusR']),

//                    CategoryButton(WaveLengthNormalCardDetailPage(data[0]), categoryNames['wavelengthMinusR']),

//                    CategoryButton(ComponentCardList(categoryNames['wavelengthMinus'], 'components_incorrect'), categoryNames['wavelengthMinus']),
                  ],
                );
                },
                itemCount: data == null ? 0 : data.length,

              );
            }),
      ),
    );
  }
}
