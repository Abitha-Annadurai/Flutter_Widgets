import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_gradients/flutter_gradients.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class GradientCode extends StatefulWidget {
  const GradientCode({Key? key}) : super(key: key);

  @override
  State<GradientCode> createState() => _GradientCodeState();
}

class _GradientCodeState extends State<GradientCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: Text('Gradient AppBar', style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.flutter_dash, color: Colors.white,),
        gradient: LinearGradient(
            colors: [Colors.black, Colors.grey],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.1, 0.3, 0.6, 0.9],
                    colors: [Colors.red, Colors.green, Colors.orange, Colors.blue]
                  )
                ),
                child: Center(child: Text('Lineear Gradient')),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: SweepGradient(
                        startAngle: pi /6,
                        endAngle: pi * 1.8,
                        stops: [0.1, 0.3, 0.6, 0.9],
                        colors: [Colors.white, Colors.grey, Colors.black54, Colors.black]
                    )
                ),
                child: Center(child: Text('Sweep Gradient')),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 250,
                width: 400,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                       radius: 0.7,
                       // stops: [0.1, 0.3, 0.6, 0.9],
                        colors: [Colors.purpleAccent, Colors.lightGreenAccent, Colors.lightBlueAccent]
                    )
                ),
                child: Center(child: Text('Radial Gradient')),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    gradient: FlutterGradients.fabledSunset(),
                ),
                child: Center(child: Text('Flutter Gradient')),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
