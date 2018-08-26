import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/category_button.dart';
import '../../../customWidgets/back_card_button.dart';
import 'qrs_first_nested_card_detail_page.dart';

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

class QrsListWithRouteNestedCardDetailPage extends StatelessWidget {
  final sendedCard;
  final secondCard;

  QrsListWithRouteNestedCardDetailPage(
      this.sendedCard,
      this.secondCard
    );

  @override
  Widget build(BuildContext context) {
    Widget imageSection = Container(
      padding: const EdgeInsets.all(20.0),
      margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
      child: sendedCard['image'].length > 0
          ? Image.asset(
              "images/${sendedCard['image']}",
              width: 450.0,
            )
          : new Text(
              'Brak zdjecia',
              style: new TextStyle(fontSize: 20.0),
              textAlign: TextAlign.justify,
            ),
    );

    return new Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.blue[900],
          pinned: true,
          title: new Text(sendedCard['title']),
        ),
        new SliverList(
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['list'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['list'] == null ? 0 : sendedCard['list'].length,
                      shrinkWrap: true,
                    ),
                    ListTile(
                      leading: sendedCard['boldListTile'] != "" ? Icon(Icons.chevron_right) : Text(''),
                      title: Text(sendedCard['boldListTile'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),

                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MyCustomRoute(
                              builder: (context) => QrsFirstNestedCardDetailPage(secondCard)),
                        );
                      },

                      child: Container(
                        height: 45.0,
                        decoration: new BoxDecoration(
                          color: Colors.yellow[900],
                          border: new Border.all(color: Colors.white, width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child:  Container(
                          padding: EdgeInsets.only(left: 8.0),
                          child:
                          Row(
                            children: <Widget>[
                              Flexible(
                                child: Icon(Icons.arrow_right, color: Colors.blue[900],),
                              ),

                              Text('Pozostałe przyczyny (patologiczny zespół  QS)', style:  TextStyle(fontSize: 16.0, color: Colors.white), textAlign: TextAlign.end,)
                            ],
                          ),

                        ),
                      ),
                    ),

                    Divider(),
                    BackCardButton('Wróć'),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ],
    ));
  }
}
