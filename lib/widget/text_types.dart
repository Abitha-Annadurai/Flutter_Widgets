import 'package:flutter/material.dart';

class TextTypes extends StatefulWidget {
  const TextTypes({Key? key}) : super(key: key);

  @override
  State<TextTypes> createState() => _TextTypesState();
}

class _TextTypesState extends State<TextTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Text'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text('Sample Text',
                style: TextStyle(color: Colors.purple, fontSize: 20,
                  fontStyle: FontStyle.italic,),
              ),
            ),
            Text('Sample Text',
              style: TextStyle(color: Colors.black, fontSize: 30,
                  fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
            ),
            Text('Sample Text',
              style: TextStyle(color: Colors.red, fontSize: 20,
                  decoration: TextDecoration.overline),
            ),
            Text('Sample Text',
              style: TextStyle( fontSize: 20, color: Colors.blue,
                  decoration: TextDecoration.lineThrough),
            ),
            Text('Sample Text',
              style: TextStyle(  color: Colors.green, fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none, fontFamily: 'PermanentMarker-Regular'),
            ),
          ],
        ),
      ),
    );
  }
}
