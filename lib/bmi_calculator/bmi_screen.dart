
import 'dart:math';

import 'package:bmi_calculator/bmi_calculator/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

  double height = 120.0;
   int age = 24;
  int weight = 80;
  bool isMale = true;


class _BmiScreenState extends State<BmiScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isMale? Colors.blue : HexColor('#000019'),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/male.png'),
                            height: 90.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('MALE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.blueGrey,
                            ),),
                          ],
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: isMale? HexColor('#000019') : Colors.pinkAccent,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/female.png'),
                            height: 90,),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text('FEMALE',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.blueGrey,
                            ),),
                          ],
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child:
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: HexColor('#000019'),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.round().toString()}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 80.0,
                        fontWeight: FontWeight.w900,
                      ),
                      ),
                      Text('CM',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ],
                  ),
                  Slider(
                      value: height,
                      min: 80.0,
                      max: 220.0,
                      inactiveColor: Colors.grey,
                      activeColor: Colors.blueGrey,
                      onChanged: (double value){
                        setState(() {
                          height = value;
                        });
                      })
                ],
              ),
            ),
          )),
          Expanded(
              child:
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: HexColor('#000019'),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                        style: TextStyle(
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        ),
                        Text('$weight',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              mini: true,
                              heroTag: 'weight-',
                              child: Icon(Icons.remove),),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              mini: true,
                              heroTag: 'weight+',
                              child: Icon(Icons.add),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor('#000019'),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                        style: TextStyle(
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        ),
                        Text('$age',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                              mini: true,
                              heroTag: 'age-',
                            child: Icon(Icons.remove),),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              mini: true,
                              heroTag: 'age+',
                              child: Icon(Icons.add),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
          Container(
            width: double.infinity,
            color: Colors.pink,
            child: MaterialButton(

              onPressed: (){

                var result = weight / pow(height / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen(
                    age: age,
                    isMale: isMale,
                    result: result.toStringAsFixed(1),
                    weight: weight,
                  )),
                );
              },
              child: Text('CALCULATE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
              height: 40.0,
            ),
          )
        ],
      ),
    );
  }
}
