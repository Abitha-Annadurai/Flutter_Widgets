import 'package:flutter/material.dart';

class CheckboxCode extends StatefulWidget {
  const CheckboxCode({Key? key}) : super(key: key);

  @override
  State<CheckboxCode> createState() => _CheckboxCodeState();
}

class _CheckboxCodeState extends State<CheckboxCode> {
  bool _checkboxVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Check Box'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(' Enabled Check Box'),
              Checkbox(
                  value: this._checkboxVal,
                  onChanged: (bool? value){
                    if(value != null){
                      setState((){
                        this._checkboxVal = value;
                      });
                    }
                  }),
              SizedBox(height: 30,),
              Text(' Disabled Check Box'),
              Checkbox(
                tristate: true,
                  value: null,
                  onChanged: null
                 )
            ],
          ),
        ),
      ),
    );
  }
}
