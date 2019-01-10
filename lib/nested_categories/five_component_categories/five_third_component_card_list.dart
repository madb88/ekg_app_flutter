import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import '../../customWidgets/category_button_coloredit.dart';
import 'five_third_component_view_controller.dart';
import 'fourth_nested_five_component_category/fourth_nested_component_card_list.dart';
import 'five_nested_five_component_category/five_nested_component_card_list.dart';
import 'package:ekg_cards_app/customRoute.dart';

class FiveThirdComponentCardList extends StatelessWidget {
  final category;
  FiveThirdComponentCardList(this.category);

  final categoryNames = {
    'first':'Blok lewej odnogi pęczka HISSA (LBBB)',
    'second':'Blok prawej odnogi pęczka HISSA (RBBB)',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text(category),

      ),
      body:
      new Container(

        padding: const EdgeInsets.all(2.0),
        // margin: new EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue[900],
              child:  ExpansionTile(
                  backgroundColor: Colors.orange[900],
                  trailing: Icon(Icons.list, color: Colors.white),
                  title: Text('Blok lewej i prawej odnogi (HISSA)', style: TextStyle(fontSize:25.00, color: Colors.white),textAlign: TextAlign.center,),
                  children: <Widget>[
                    Container(
                      height: 130.00,
                      width: MediaQuery.of(context).size.width,

                      color: Colors.orange[600],
                      child:
                      Scrollbar(
                        child: ListView(
                          children: <Widget>[
                            CategoryButtonColor(FourthNestedComponentCardList(categoryNames['first'],'five_third_nested_component_cards'), categoryNames['first'],Colors.orange[400]),
                            CategoryButtonColor(FiveNestedComponentCardList(categoryNames['second'],'five_fourth_nested_component_cards'), categoryNames['second'],Colors.orange[400]),

                          ],
                        ),
                      ),
                    ),
                  ]),
            ),

            new Flexible(
              child: FutureBuilder(
                future: DefaultAssetBundle
                    .of(context)
                    .loadString('data_repo/five_third_component_cards.json'),
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
                                            FiveThirdComponentViewController(
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
                                height: 2.0,
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
          ],
        ),
      ),
    );
  }
}
