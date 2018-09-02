import 'package:flutter/material.dart';
import '../../customWidgets/back_card_button.dart';
import '../../customWidgets/normal_text.dart';

class QtSpaceThirdCardDetailPage extends StatelessWidget {
  final sendedCard;

  QtSpaceThirdCardDetailPage(this.sendedCard);

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
                ListTile(
                leading: Icon(Icons.chevron_right),
                title: Text(sendedCard['listElement'],style: TextStyle(fontSize: 20.0)),
              ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Flexible(
                            child: NormalText(
                                sendedCard['listHead'], FontWeight.bold)),
                      ],
                    ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['listElement2'],style: TextStyle(fontSize: 20.0)),
                ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['listElement3'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                Divider(height: 10.0, color: Colors.white),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                        child: NormalText(
                            sendedCard['listHead2'], FontWeight.bold)),
                  ],
                ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.chevron_right),
                          title: Text(sendedCard['list'][index],
                              style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['list'] == null
                          ? 0
                          : sendedCard['list'].length,
                      shrinkWrap: true,
                    ),
                    Divider(height: 10.0, color: Colors.white),
                    ListTile(
                      leading: Icon(Icons.chevron_right),
                      title: Text(sendedCard['nestedListHead'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),

                      padding: EdgeInsets.only(left: 15.0),
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          leading: Icon(Icons.subdirectory_arrow_right),
                          title: Text(sendedCard['nestedList'][index],style: TextStyle(fontSize: 20.0)),
                        );
                      },
                      itemCount: sendedCard['nestedList'] == null ? 0 : sendedCard['nestedList'].length,

                      shrinkWrap: true,
                    ),
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                          Flexible(
                                child: NormalText(
                                    sendedCard['listHead3'], FontWeight.bold),
                              ),
                      ],
                    ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['nestedListHead2'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  physics: ScrollPhysics(),

                  padding: EdgeInsets.only(left: 15.0),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['nestedList2'][index],style: TextStyle(fontSize: 20.0)),
                    );
                  },
                  itemCount: sendedCard['nestedList2'] == null ? 0 : sendedCard['nestedList2'].length,

                  shrinkWrap: true,
                ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['nestedListHead3'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  physics: ScrollPhysics(),

                  padding: EdgeInsets.only(left: 15.0),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['nestedList3'][index],style: TextStyle(fontSize: 20.0)),
                    );
                  },
                  itemCount: sendedCard['nestedList3'] == null ? 0 : sendedCard['nestedList3'].length,

                  shrinkWrap: true,
                ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['nestedListHead4'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  physics: ScrollPhysics(),

                  padding: EdgeInsets.only(left: 15.0),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['nestedList4'][index],style: TextStyle(fontSize: 20.0)),
                    );
                  },
                  itemCount: sendedCard['nestedList4'] == null ? 0 : sendedCard['nestedList4'].length,

                  shrinkWrap: true,
                ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['nestedListHead5'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  physics: ScrollPhysics(),

                  padding: EdgeInsets.only(left: 15.0),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['nestedList5'][index],style: TextStyle(fontSize: 20.0)),
                    );
                  },
                  itemCount: sendedCard['nestedList5'] == null ? 0 : sendedCard['nestedList5'].length,

                  shrinkWrap: true,
                ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['nestedListHead6'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  physics: ScrollPhysics(),

                  padding: EdgeInsets.only(left: 15.0),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['nestedList6'][index],style: TextStyle(fontSize: 20.0)),
                    );
                  },
                  itemCount: sendedCard['nestedList6'] == null ? 0 : sendedCard['nestedList6'].length,

                  shrinkWrap: true,
                ),
                ListTile(
                  leading: Icon(Icons.chevron_right),
                  title: Text(sendedCard['nestedListHead7'],style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                ListView.builder(
                  physics: ScrollPhysics(),

                  padding: EdgeInsets.only(left: 15.0),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.subdirectory_arrow_right),
                      title: Text(sendedCard['nestedList7'][index],style: TextStyle(fontSize: 20.0)),
                    );
                  },
                  itemCount: sendedCard['nestedList7'] == null ? 0 : sendedCard['nestedList7'].length,

                  shrinkWrap: true,
                ),
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
