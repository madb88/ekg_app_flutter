import 'package:flutter/material.dart';
import './../nested_categories/axis_categories/axis_card_list.dart';
import './../nested_categories/drain_categories/drain_card_list.dart';
import './../nested_categories/ekg_component_categories/wavelength_card_list.dart';
import './../nested_categories/episode_interval_categories/episode_interval_card_list.dart';
import './../nested_categories/feature_categories/feature_card_list.dart';
import './../nested_categories/fourth_component_categories/fourth_component_card_list.dart';
import './../nested_categories/other_concepts__categories/other_concepts_card_list.dart';
import './../nested_categories/qrs_team/qrs_team_card_list.dart';
import './../nested_categories/qtSpace/qt_space_card_list.dart';
import './../nested_categories/second_component_categories/second_component_card_list.dart';
import './../nested_categories/stSection/st_section_card_list.dart';
import './../nested_categories/third_component_categories/third_component_card_list.dart';
import './../nested_categories/wavelengthT/wavelengthT_card_list.dart';
import './../nested_categories/wavelengthU/wavelengthU_card_list.dart';
import './../nested_categories/five_component_categories/five_component_card_list.dart';
import './../nested_categories/five_component_categories/five_second_component_card_list.dart';
import './../nested_categories/five_component_categories/five_third_component_card_list.dart';
import './../nested_categories/five_component_categories/five_fourth_component_card_list.dart';
import './../nested_categories/six_component_categories/six_component_card_list.dart';
import '../customWidgets/navigation_calculator_element.dart';
import '../customWidgets/navigation_list_element.dart';

class NavigatorWidget extends StatelessWidget {
  final mainCategories = [
    'Podstawy',
    'EKG',
    'Rytm zatokowy i jego zaburzenia',
    'Arytmie nadkomorowe',
    'Komorowe zaburzenia rytmu',
    'Zaburzenia automatyzmu i przewodzenia/stymulator',
    'Choroby'
  ];

  final basicNestedCategories = [
    'Odprowadzenia',
    'Oś',
    'Cecha, szybkość przesuwu i częstotliwość rytmu',
    'Podstawowe pojęcia',
  ];

  final drainNestedCategories = ['Lokalizacja', 'Odprowadzenia sąsiadujące'];

  final axisNestedCategories = [
    'II, III (+)',
    'I, III oba skierowane w dół',
    'I, III rozbierzne',
  ];

  final ekgCategories = [
    "Załmek P",
    "Odcinek i odstęp PQ",
    "Zespół QRS",
    "Odcinek ST",
    "Załamek T",
    "Odstęp QT",
    "Załamek U"
  ];

  final sixMainCategoryNested = [
    'Zaburzenia funkcji węzła zatokowego',
    'Przewodzenie przedsionkowo-komorowe',
    'Zaburzenia przewodzenia śródkomorowego',
    'Stymulator'
  ];

  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('data_repo/odprowadzenia.json'),
          builder: (context, snapshot) {
            return new ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 88.0,
                  child: DrawerHeader(
                    child: Text(
                      'Spis treści',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                    ),
                  ),
                ),
                ExpansionTile(
                  title: Text(
                    mainCategories[0],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  children: <Widget>[
                    NavigationListElement(
                        DrainCardList(
                            basicNestedCategories[0], 'odprowadzenia'),
                        basicNestedCategories[0],
                        18.0),
                    NavigationListElement(
                        AxisCardList(basicNestedCategories[1], 'axis_cards'),
                        basicNestedCategories[1],
                        18.0),
                    NavigationListElement(
                        FeatureCardList(
                            basicNestedCategories[2], 'feature_cards'),
                        basicNestedCategories[2],
                        18.0),
                    NavigationListElement(
                        OtherConceptsCardList(
                            basicNestedCategories[3], 'other_concepts'),
                        basicNestedCategories[3],
                        18.0),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    mainCategories[1],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  children: <Widget>[
                    NavigationListElement(
                        WaveLengthCardList(ekgCategories[0], 'components'),
                        ekgCategories[0],
                        18.0),
                    NavigationListElement(
                        EpisodeIntervalCardList(
                            ekgCategories[1], 'episode_interval'),
                        ekgCategories[1],
                        18.0),
                    NavigationListElement(
                        QrsTeamCardList(ekgCategories[2], 'qrs_team'),
                        ekgCategories[2],
                        18.0),
                    NavigationListElement(
                        StSectionCardList(ekgCategories[3], 'stFsection'),
                        ekgCategories[3],
                        18.0),
                    NavigationListElement(
                        WaveLengthTCardList(ekgCategories[4], 'wavelengthT'),
                        ekgCategories[4],
                        18.0),
                    NavigationListElement(
                        QtSpaceCardList(ekgCategories[5], 'qtSpace'),
                        ekgCategories[5],
                        18.0),
                    NavigationListElement(
                        WaveLengthUCardList(ekgCategories[6], 'wavelengthU'),
                        ekgCategories[6],
                        18.0),
                  ],
                ),
                NavigationListElement(
                    SecondComponentCardList(mainCategories[2]),
                    mainCategories[2],
                    18.0),
                NavigationListElement(ThirdComponentCardList(mainCategories[3]),
                    mainCategories[3], 18.0),
                NavigationListElement(
                    FourthComponentCardList(mainCategories[4]),
                    mainCategories[4],
                    18.0),
                ExpansionTile(
                  title: Text(
                    mainCategories[5],
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  children: <Widget>[
                    NavigationListElement(
                        FiveComponentCardList(sixMainCategoryNested[0]),
                        sixMainCategoryNested[0],
                        18.0),
                    NavigationListElement(
                        FiveSecondComponentCardList(
                            sixMainCategoryNested[1]),
                        sixMainCategoryNested[1],
                        18.0),
                    NavigationListElement(
                        FiveThirdComponentCardList(sixMainCategoryNested[2]),
                        sixMainCategoryNested[2],
                        18.0),
                    NavigationListElement(
                        FiveFourthComponentCardList(sixMainCategoryNested[3]),
                        sixMainCategoryNested[3],
                        18.0),
                  ],
                ),
                NavigationListElement(
                    SixComponentCardList(mainCategories[6]),
                    mainCategories[6],
                    18.0),
                NavigationCalculatorElement(),
                Divider(),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  title: Text(
                    "Zamknij",
                    style: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                  ),
                  trailing: Icon(
                    Icons.close,
                    color: Colors.red[900],
                  ),
                )
              ],
            );
          }),
    );

    return drawer;
  }
}
