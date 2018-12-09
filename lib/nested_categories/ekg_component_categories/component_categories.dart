import 'package:flutter/material.dart';
import '../../home_page.dart';
import '../../category_list.dart';
import './../../customWidgets/category_button.dart';
import './../../customWidgets/floating_custom_button.dart';
import '../episode_interval_categories/episode_interval_card_list.dart';
import '../qrs_team/qrs_team_card_list.dart';
import '../stSection/st_section_card_list.dart';
import 'wavelength_card_list.dart';
import './../../customWidgets/navigator_widget.dart';
import '../wavelengthT/wavelengthT_card_list.dart';
import '../qtSpace/qt_space_card_list.dart';
import '../wavelengthU/wavelengthU_card_list.dart';


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

class ComponentCategoriesList extends StatelessWidget {
  final componentName;

  ComponentCategoriesList(
    this.componentName
  );

  final categoryNames = {
    'wavelength':'Załamek P',
    'episodeAndInterval': 'Odcinek i odstęp PQ',
    'qrsTeam' : 'Zespół QRS',
    'stSection': 'Odcinek ST',
    'wavelengthT' : 'Załamek T',
    'qtSpace' : "Odstęp QT",
    'wavelengthU' : "Załamek U"
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
        padding: const EdgeInsets.all(5.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CategoryButton(WaveLengthCardList(categoryNames['wavelength'],'components'), categoryNames['wavelength']),
                Divider(
                ),
                CategoryButton(EpisodeIntervalCardList(categoryNames['episodeAndInterval'], 'episode_interval'), categoryNames['episodeAndInterval']),
                Divider(
                ),
                CategoryButton(QrsTeamCardList(categoryNames['qrsTeam'], 'qrs_team'), categoryNames['qrsTeam']),
                Divider(
                ),
                CategoryButton(StSectionCardList(categoryNames['stSection'], 'stFsection'), categoryNames['stSection']),
                Divider(
                ),
                CategoryButton(WaveLengthTCardList(categoryNames['wavelengthT'], 'wavelengthT'), categoryNames['wavelengthT']),
                Divider(
                ),
                CategoryButton(QtSpaceCardList(categoryNames['qtSpace'], 'qtSpace'), categoryNames['qtSpace']),
                Divider(
                ),
                CategoryButton(WaveLengthUCardList(categoryNames['wavelengthU'], 'wavelengthU'), categoryNames['wavelengthU']),
              ],
            )
          ],
        ),
      ),
    );
  }
}
