import 'package:flutter/material.dart';

class IconsType extends StatefulWidget {
  const IconsType({Key? key}) : super(key: key);

  @override
  State<IconsType> createState() => _IconsTypeState();
}

class _IconsTypeState extends State<IconsType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Icons'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.add, size: 50,),
                Icon(Icons.ac_unit, size: 50,),
                Icon(Icons.access_alarm, size: 50,),
                Icon(Icons.account_balance, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.baby_changing_station, size: 50,),
                Icon(Icons.hd, size: 50,),
                Icon(Icons.backup, size: 50,),
                Icon(Icons.gavel, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.calendar_month_outlined, size: 50,),
                Icon(Icons.cake, size: 50,),
                Icon(Icons.imagesearch_roller, size: 50,),
                Icon(Icons.cable, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.dangerous_sharp, size: 50,),
                Icon(Icons.deck_sharp, size: 50,),
                Icon(Icons.elderly, size: 50,),
                Icon(Icons.edit, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.favorite, size: 50,),
                Icon(Icons.feedback, size: 50,),
                Icon(Icons.access_alarm, size: 50,),
                Icon(Icons.account_balance, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.join_inner, size: 50,),
                Icon(Icons.kebab_dining, size: 50,),
                Icon(Icons.leak_add, size: 50,),
                Icon(Icons.map, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.new_releases, size: 50,),
                Icon(Icons.open_with, size: 50,),
                Icon(Icons.qr_code, size: 50,),
                Icon(Icons.ramen_dining, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.scatter_plot, size: 50,),
                Icon(Icons.tapas_sharp, size: 50,),
                Icon(Icons.upcoming, size: 50,),
                Icon(Icons.video_library_sharp, size: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.wallpaper, size: 50,),
                Icon(Icons.yard, size: 50,),
                Icon(Icons.zoom_in, size: 50,),
                Icon(Icons.receipt, size: 50,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
