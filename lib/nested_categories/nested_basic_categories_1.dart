import 'package:flutter/material.dart';
import '../nested_category1.dart';
import '../home_page.dart';
import '../customWidgets/navigator_widget.dart';
import '../customWidgets/category_button.dart';
import 'package:ekg_cards_app/customRoute.dart';


class CategoryList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    

    return new Scaffold(
      drawer: NavigatorWidget(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.blue[900],
        title: Text("EKG Vademecum"),
        actions: <Widget>[
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
        padding: const EdgeInsets.all(10.0),
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
        child: ListView(
          children: <Widget>[
            CategoryButton(NestedCategoryList(), 'Podstawy'),
          
            Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MyCustomRoute(builder: (context) => NestedCategoryList()),
                );
              },
              child: Container(
                //width: 100.0,
                height: 80.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Text(
                    'EKG',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
