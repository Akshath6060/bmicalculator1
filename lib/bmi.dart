import 'package:flutter/material.dart';

class BmiCal extends StatefulWidget {
  const BmiCal({super.key});

  @override
  State<BmiCal> createState() => _BmiCalState();
}

class _BmiCalState extends State<BmiCal> {
TextEditingController height=TextEditingController();
TextEditingController weight=TextEditingController();
double result=0;
double h_value=0;
double w_value=0;
void calculate(){
  h_value= double.parse(height.text);
  w_value=double.parse(weight.text);
  result=w_value/(h_value*h_value);
  print(result);
}
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        title: Text(
          style: TextStyle(color: Colors.green),
          'bmi claculator',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: TextField(controller: weight,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'weigth',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: TextField(controller:height,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'height',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
              setState(() {
                calculate();
              });
              },

              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: Text('calculate'),
            ),
            Text(
                result == null ?"Enter Value" : "${result.toString(2)}"
            ),
          ],
        ),
      ),
    );
  }
}

