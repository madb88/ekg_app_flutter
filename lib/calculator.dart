import 'package:flutter/material.dart';
import 'dart:math';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var rightQt = 0.0, rr = 0.0, sum = 0.0, hr = 0.0;
  var hrColor;
  int fac = pow(10, 3);
  var transmition;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

  @override
  initState() {
    super.initState();
    transmition = 1;
    hrColor = Colors.blue;
  }

  void calculateQt() {
    this.setState(() {
      rightQt = double.parse(t1.text);
      rr = double.parse(t2.text);

      sum = rightQt * 0.04 / sqrt(rr * 0.04);
      sum = ((sum * fac).round() / fac) * 1000;

      if (transmition == 1) {
        hr = 300 / rr * 5;
      } else if (transmition == 2) {
        hr = 300 / rr * 10;
      }

      if (hr > 200) {
        hrColor = Colors.red;
      } else {
        hrColor = Colors.blue;
      }
    });
  }

  void clearCalculator() {
    this.setState(() {
      sum = 0.0;
      hr = 0.0;
      hrColor = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<int>> listDrop = [];

    void loadData() {
      listDrop
          .add(new DropdownMenuItem(child: Text("Przesuw 25 ms"), value: 1));
      listDrop
          .add(new DropdownMenuItem(child: Text("Przesuw 50 ms"), value: 2));
    }

    loadData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator (wzór Bazetta)'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "QTc: $sum",
                style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "HR: $hr",
                style: TextStyle(
                  fontSize: 35.0,
                  color: hrColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15.0),
                    labelText: "Qt (ilosc malych kwadratow)"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelStyle: TextStyle(fontSize: 15.0),
                    labelText: "Odstep RR (ilosc malych kwadratow)"),
                controller: t2,
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new DropdownButton(
                    value: transmition,
                    items: listDrop,
                    hint: Text("Wybierz predkosc przesylu"),
                    onChanged: (value) => this.setState(() {
                          transmition = value;
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new InkWell(
                        onTap: calculateQt,
                        child: new Container(
                          height: 50.0,
                          width: 150.0,
                          decoration: new BoxDecoration(
                            color: Colors.blueAccent,
                            border: new Border.all(color: Colors.white),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(
                            child: new Text(
                              'Oblicz',
                              style: new TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      new InkWell(
                        onTap: clearCalculator,
                        child: new Container(
                          height: 50.0,
                          width: 150.0,
                          decoration: new BoxDecoration(
                            color: Colors.blueAccent,
                            border: new Border.all(color: Colors.white),
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          child: new Center(
                            child: new Text(
                              'Wyczysc',
                              style: new TextStyle(
                                  fontSize: 18.0, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
