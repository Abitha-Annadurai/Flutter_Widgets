import 'package:flutter/material.dart';

class IndicatorCode extends StatefulWidget {
  const IndicatorCode({Key? key}) : super(key: key);

  @override
  State<IndicatorCode> createState() => _IndicatorCodeState();
}

class _IndicatorCodeState extends State<IndicatorCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Progress Indicator'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text('Linear Progress Indicator'),
            SizedBox(height: 20,),
            LinearProgressIndicator(),

            SizedBox(height: 50,),
            Text('Circular Progress Indicator'),
            SizedBox(height: 20,),
            Center(child: CircularProgressIndicator()),
          ],
        ),
      ),
    );
  }
}
