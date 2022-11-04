import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ImageTypes extends StatefulWidget {
  const ImageTypes({Key? key}) : super(key: key);

  @override
  State<ImageTypes> createState() => _ImageTypesState();
}

class _ImageTypesState extends State<ImageTypes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Image'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text('Image from Asset'), SizedBox(height: 10,),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assest/icon.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Divider(),Divider(),
              Text('Image from URL'), SizedBox(height: 10,),
              Card(
                //height: 200,
                //width: 200,
                child: FadeInImage.memoryNetwork(placeholder: kTransparentImage,
                    image: 'https://1.bp.blogspot.com/-6x1F_8qxro8/W4EUkN4nAQI/AAAAAAAAARA/JSJ-txqL3JMW-BRzA2BFFZrKFkbifprdACLcBGAs/s1600/P_20180614_093912.jpg',
                  height: 200, width: 200,
                ),
              ),
              Divider(), Divider(),
              Text('Cached Network Image'),SizedBox(height: 10,),
              CachedNetworkImage(
                  imageUrl: 'https://1.bp.blogspot.com/-UQMIN19z5Cg/XWEI9HE3qEI/AAAAAAAAAq4/uP7BqJ-qlfc6DX8kM7Ruq-UZx_Mqr89LACLcBGAs/s1600/IMG_20190217_180108.jpg',
              height: 200,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(),
              ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),

              Divider(),Divider(),
              Text('Extended Image'), SizedBox(height: 10),
              ExtendedImage.network('https://lh3.googleusercontent.com/-4mX9ZJfsJ54/WvfgErNja5I/AAAAAAAAAIc/vylfSlESiQUefMdkW0OaJSYPkviA--mugCHMYCw/s640/P_20160916_175026_1.jpg',
              height: 200,
                shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(30)),),
            ],
          ),
        ),
      ),
    );
  }
}
