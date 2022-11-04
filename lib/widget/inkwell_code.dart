import 'package:flutter/material.dart';

class InkwellCode extends StatefulWidget {
  const InkwellCode({Key? key}) : super(key: key);

  @override
  State<InkwellCode> createState() => _InkwellCodeState();
}

class _InkwellCodeState extends State<InkwellCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('InkWell'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: Colors.pink,
              margin: EdgeInsets.all(15),
              elevation: 0,
              child: SizedBox(
                height: 150,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {},
                  child: Center(
                    child: Text('Card With Inkwell Effect'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
