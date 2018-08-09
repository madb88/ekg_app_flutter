import 'package:flutter/material.dart';
import 'dart:math';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var rightQt = 0.0,rr = 0.0,sum = 0.0, hr = 0.0;

  int fac = pow(10, 3);

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");

    void calculateQt(){
      this.setState((){
        rightQt = double.parse(t1.text);
        rr = double.parse(t2.text);
        
        sum = rightQt * 0.04 / sqrt(rr * 0.04);
        sum = ((sum * fac).round() / fac) * 1000;
        hr = 300 / rr;
      });
    }

    void clearCalculator(){
      this.setState((){
        sum = 0.0;
        hr = 0.0;

      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator (wzór Bazetta)'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5.0, left: 10.0,right: 10.0),
        child: Center(
          child: Column(
            
            children: <Widget>[
              Text(
                "QTc: $sum",
                style: TextStyle(
                  fontSize: 25.0, 
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                  ),
              ),
               Text(
                "HR: $hr (przy tasmie 25 mm/s)",
                style: TextStyle(
                  fontSize: 25.0, 
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                  ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 15.0),
                  labelText: "Qt (ilosc malych kwadratow)"
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelStyle: TextStyle(fontSize: 15.0),
                  labelText: "Odstep RR (ilosc malych kwadratow)"
                ),
                controller: t2,
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0)
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: <Widget>[
                    RaisedButton(
                      child: Text("Oblicz"),
                      onPressed: calculateQt,
                    ),
                    RaisedButton(
                      child: Text("Wyczysc"),
                      onPressed: clearCalculator,
                    )
                  ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
