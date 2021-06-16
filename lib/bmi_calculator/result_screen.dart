import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {

  final int age;
  final String result;
  final int weight;
  final bool isMale;

  const ResultScreen({Key key, this.age, this.result, this.weight, this.isMale}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Age: $age',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Gender : ${isMale? 'Male' : 'Female'}',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Weight: $weight',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            SizedBox(
              height: 10,
            ),
            Text('Result: $result',
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),),
            SizedBox(
              height: 20.0,
            ),
            Text(
                'Underweight : 17.0-18.4',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18.0,
              color: Colors.blueGrey

            ),),
            SizedBox(
              height: 10,
            ),
            Text(
              'Normal : 18.5-24.9',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.blueGrey

              ),),
            SizedBox(
              height: 10,
            ),
            Text(
              'Overweight : 25-29.9',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.blueGrey,
              ),),
            SizedBox(
              height: 10,
            ),


          ],
        ),
      ),
    );
  }
}
