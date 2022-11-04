import 'package:flutter/material.dart';

class RadioCode extends StatefulWidget {
  const RadioCode({Key? key}) : super(key: key);

  @override
  State<RadioCode> createState() => _RadioCodeState();
}

class _RadioCodeState extends State<RadioCode> {
  int _radioVal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Radio'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text('Radio'),
              Row(
                children: [0,1,2,3].map((int index) => Radio<int>(
                  value: index,
                  groupValue: this._radioVal,
                  onChanged: (int? value) {
                    if(value != null){
                      setState((){
                        this._radioVal = value;
                      });
                    }
                  },
                )).toList()
              )
            ],
          ),
        ),
      ),
    );
  }
}
