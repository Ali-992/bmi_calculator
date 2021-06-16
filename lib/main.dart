import 'package:bmi_calculator/bmi_calculator/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {

  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: BmiScreen(),
      theme: ThemeData(
       scaffoldBackgroundColor: HexColor('#000027'),
        appBarTheme: AppBarTheme(
          color: HexColor('#000027'),
          elevation: 0.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}