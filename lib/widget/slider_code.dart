import 'package:flutter/material.dart';

class SliderCode extends StatefulWidget {
  const SliderCode({Key? key}) : super(key: key);

  @override
  State<SliderCode> createState() => _SliderCodeState();
}

class _SliderCodeState extends State<SliderCode> {
  double _slider1Val = 0.6;
  double _slider2Val = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Slider'),
            Slider(
                value: this._slider1Val,
                onChanged: (double value){
                  setState((){
                    this._slider1Val = value;
                  });
                }),
            SizedBox(height: 39,),
            Text('Slider With Label and Division'),
            Slider(
                value: this._slider2Val,
                divisions: 5,
                max: 100,
                onChanged: (double value){
                  setState((){
                    this._slider2Val = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
