import 'package:flutter/material.dart';
import '../../../customWidgets/normal_text.dart';
import '../../../customWidgets/back_card_button.dart';

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

class FirstRCardDetailPage extends StatelessWidget {
  final sendedCard;

  FirstRCardDetailPage(
      this.sendedCard,
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
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(child: NormalText(sendedCard['subTitle'], FontWeight.bold)),
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