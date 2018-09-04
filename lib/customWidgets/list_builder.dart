import 'package:flutter/material.dart';

class ListBuilder extends StatelessWidget {
  final list;

  ListBuilder(
      this.list
      );

  @override
  Widget build(BuildContext context) {
    ListView listBuilder = ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.chevron_right),
          title: Text(list[index],style: TextStyle(fontSize: 20.0)),
        );
      },
      itemCount: list == null ? 0 : list.length,
    );
    return listBuilder;
  }
}