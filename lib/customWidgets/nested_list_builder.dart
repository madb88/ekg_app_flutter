import 'package:flutter/material.dart';

class NestedListBuilder extends StatelessWidget {
  final list;

  NestedListBuilder(
      this.list,
      );

  @override
  Widget build(BuildContext context) {
    ListView nestedListBuilder = ListView.builder(
      physics: ScrollPhysics(),
      padding: EdgeInsets.all(1.0),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Icon(Icons.subdirectory_arrow_right),
          title: Text(list[index],style: TextStyle(fontSize: 20.0)),
        );
      },
      itemCount: list == null ? 0 : list.length,
    );
    return nestedListBuilder;
  }
}
