import 'package:flutter/material.dart';

class CardCode extends StatefulWidget {
  const CardCode({Key? key}) : super(key: key);

  @override
  State<CardCode> createState() => _CardCodeState();
}

class _CardCodeState extends State<CardCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Card'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              color: Colors.lightGreen,
              elevation: 10,
                child: SizedBox(
                  height: 100,
                  child: Center(
                    child: Text('Card 1'),
                  ),
                ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.purpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.elliptical(50, 80)
                ),
              ),
              child: SizedBox(
                height: 100,
                child: Center(
                  child: Text('Card 2'),
                ),
              ),
            ),
            SizedBox(height: 20,),

            Card(
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: Stack(
                      children: [
                        Positioned.fill(
                            child: Image.asset('assest/bg2.jpg',
                              fit: BoxFit.cover,
                            )
                        ),
                        Positioned(
                          bottom: 15,
                            left: 15,
                            right: 15,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerLeft,
                              child: Center(child: Text('Card 4',)
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text('OK', style: TextStyle(color: Colors.white),)),
                      TextButton(onPressed: (){}, child: Text('CANCEL', style: TextStyle(color: Colors.white))),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
