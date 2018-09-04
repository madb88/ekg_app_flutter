import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/back_card_button.dart';
import 'qrs_first_nested_card_detail_page.dart';
import '../../../customWidgets/list_builder.dart';

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
                    ListBuilder(sendedCard['list']),
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
