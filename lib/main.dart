// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_widget/widget/widget_types.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey,),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Flutter Code', style: TextStyle(color: Colors.black, fontSize: 20 ),),
        leading: Padding(padding: EdgeInsets.only(left: 12), child: Image.asset('assest/icon.jpg')),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assest/bg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
               Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10,),
                        child: Row(
                          children: [
                            TextButton(onPressed: (){
                              //Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppbarList(),),);
                            },
                              child: Text('AppBar',
                                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 50,),
                        child: Row(
                          children: [
                            TextButton(onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => WidgetTypes(),),);
                            },
                              child: Text('Widget', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
              ],
            ),
          ),
        ),
    );
  }
}
