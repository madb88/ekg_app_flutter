import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../../customWidgets/category_button_coloredit.dart';
import 'second_nested_component_view_controller.dart';
import '../third_nested_five_component_category/third_nested_component_card_list.dart';

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

class SecondNestedComponentCardList extends StatelessWidget {
  final category;
  final categoryName;

  SecondNestedComponentCardList(
      this.category,
      this.categoryName,

    );

  final categoryNames = {
    'first':'Bloki przedsionkowo-komorowe II stopnia',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text(category),
        elevation: 0.0,
      ),
//      bottomNavigationBar: BottomAppBar(
//        color: Colors.blue[900],
//        child:
//        Container(
//          color: Colors.orange[600],
//          child: CategoryButtonColor(ThirdNestedComponentCardList(categoryNames['first'],'third_nested_five_component_cards'), categoryNames['first'],Colors.orange[400]),
//        ),
//      ),
      body:
      new Container(

        padding: const EdgeInsets.all(2.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            new Flexible(

              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/$categoryName.json'),
                builder: (context, snapshot) {
                  if(snapshot.data == null){
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator()
                      ),
                    );
                  } else {
                    var newItem = json.decode(snapshot.data.toString());
                    return new ListView.builder(
                      itemBuilder: (BuildContext context, int index) {

                        return Card(
                          elevation: 2.0,
                          color: index == 1?Colors.orange[400]:Colors.white,
                          shape: Border.all(color: Colors.blue[900]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[

                              new ListTile(
                                onTap: () {
                                  final sendedCard = newItem;
                                  Navigator.push(
                                    context,
                                     MyCustomRoute(
                                        builder: (context) =>
                                            SecondNestedComponentViewController(
                                                index, sendedCard)),
                                  );
                                },
                                trailing: Icon(
                                    Icons.description, color: Colors.blue[900]),
                                title: Text(
                                  newItem[index]['title'],
                                  style:
                                   TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 22.0),
                                ),
                                subtitle: Text(newItem[index]['subtitle'],
                                  style: TextStyle(fontSize: 15.0),),
// ...
                              ),
                               Divider(
                                height: 5.0,
                              ),
                            ],
                          ),

                        );

                      },
                      itemCount: newItem == null ? 0 : newItem.length,
                    );

                  }
                },
              ),

            ),

//            Expanded(
//              flex: 1,
//              child: CategoryButtonColor(ThirdNestedComponentCardList(categoryNames['first'],'third_nested_five_component_cards'), categoryNames['first'],Colors.orange[400]),
//            ),
          ],
        ),
      ),
    );
  }
}
