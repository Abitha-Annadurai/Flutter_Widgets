import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ButtonTypes extends StatefulWidget {
  const ButtonTypes({Key? key}) : super(key: key);

  @override
  State<ButtonTypes> createState() => _ButtonTypesState();
}

class _ButtonTypesState extends State<ButtonTypes> {
  @override
  Widget build(BuildContext context) {

    void _showToast() => Fluttertoast.showToast(msg: 'Button Clicked',
    toastLength: Toast.LENGTH_SHORT);

    void _showSnack() => ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
         content: Text('Button Tapped'),
       duration: Duration(milliseconds: 500),
     )
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Button'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: _showToast,
                  child: Text('Elevated Button'),
              ),
              ElevatedButton(onPressed: null,
                  child: Text('disabled-Elevated Button'))
            ],
          ),

          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: _showToast,
                child: Text('Text Button', style: TextStyle(color: Colors.black),),
              ),
              TextButton(onPressed: null,
                  child: Text('disabled-Text Button')
              ),
            ],
          ),

          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: _showToast,
                child: Text(' Outlined Button', style: TextStyle(color: Colors.black)),
              ),
              OutlinedButton(onPressed: null,
                  child: Text('disabled- Outlined Button')
              ),
            ],
          ),

          Center(
            child: IconButton(
              icon: Icon(Icons.home_outlined),
              iconSize: 35,
              onPressed: _showSnack,
            ),
          )
        ],
      ),
    );
  }
}
