import 'package:flutter/material.dart';

class SwitchCode extends StatefulWidget {
  const SwitchCode({Key? key}) : super(key: key);

  @override
  State<SwitchCode> createState() => _SwitchCodeState();
}

class _SwitchCodeState extends State<SwitchCode> {
  bool _switchVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Switch'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(' Enabled Switch'),
              Switch(
                  value: this._switchVal,
                  onChanged: (bool value){
                    setState((){
                      this._switchVal = value;
                    });
                  }),
              SizedBox(height: 30,),
              Text(' Disabled Switch'),
              Switch(
                  value: false,
                  onChanged: null
              )
            ],
          ),
        ),
      ),
    );
  }
}
