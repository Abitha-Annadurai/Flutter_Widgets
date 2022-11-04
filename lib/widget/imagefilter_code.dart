import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'dart:ui';

class ImageFiltering extends StatefulWidget {
  const ImageFiltering({Key? key}) : super(key: key);

  @override
  State<ImageFiltering> createState() => _ImageFilteringState();
}

class _ImageFilteringState extends State<ImageFiltering> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Image Filter'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageFiltered(
                imageFilter: ImageFilter.blur( sigmaY: 4,sigmaX: 4),
                child: Image.asset("assest/icon.jpg",)
            ),
            ColorFiltered(
                colorFilter: ColorFilter.matrix([
                  0.9,0.5,0.1,0.0,0.0,
                  0.3,0.8,0.1,0.0,0.0,
                  0.2,0.3,0.5,0.0,0.0,
                  0.0,0.0,0.0,1.0,0.0
                ]),
                child: Image.asset("assest/icon.jpg")),
            ImageFiltered(
                imageFilter: ImageFilter.matrix(
                  Float64List.fromList([
                    1,1,0,0,
                    0,1,1,0,
                    1,1,0,1,
                    1,1,0,1
                  ]),
                ),
                child: Image.asset("assest/icon.jpg",scale: 3.5, height: 100,)
            ),SizedBox(height: 250,),
            ImageFiltered(
                imageFilter: ImageFilter.matrix(
                  Matrix4.rotationZ(0.15).storage,
                ),
                child: Image.asset("assest/icon.jpg")
            ),SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
