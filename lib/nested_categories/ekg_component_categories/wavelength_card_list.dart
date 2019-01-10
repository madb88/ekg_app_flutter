import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert';
import 'wavelength_view_controller.dart';
import '../../customWidgets/category_button_coloredit.dart';
import 'component_card_list.dart';
import '../../customRoute.dart';


class WaveLengthCardList extends StatelessWidget {
  final category;
  final categoryName;
  WaveLengthCardList(this.category, this.categoryName);

  final categoryNames = {
    'incorrectWave':'Nieprawidłowy',
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: new Text(category),

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[900],
        child: CategoryButtonColor(ComponentCardList(categoryNames['incorrectWave'],'components_incorrect'), categoryNames['incorrectWave'],Colors.orange[400]),

      ),
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
                  var newItem = json.decode(snapshot.data.toString());
                  return new ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        shape: Border.all(color: Colors.blue[900]),
                        elevation: 2.0,
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[

                            new ListTile(
                              onTap: () {
                                final sendedCard = newItem;
                                Navigator.push(
                                  context,
                                  MyCustomRoute(
                                      builder: (context) =>
                                          WaveLengthViewController(index, sendedCard)),
                                );
                              },
                              trailing: Icon(Icons.description, color: Colors.blue[900]),
                              title: new Text(
                                newItem[index]['title'],
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                              ), // ...
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: newItem == null ? 0 : newItem.length,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
