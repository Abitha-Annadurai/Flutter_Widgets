import 'package:flutter/material.dart';

class DropDownButtonTypes extends StatefulWidget {
  const DropDownButtonTypes({Key? key}) : super(key: key);

  @override
  State<DropDownButtonTypes> createState() => _DropDownButtonTypesState();
}

class _DropDownButtonTypesState extends State<DropDownButtonTypes> {

  static const menuItems = <String>['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems.map(
      (String value) => DropdownMenuItem<String>(
        value: value,
          child: Text(value)
      )
  ).toList();

  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems.map(
          (String value) => PopupMenuItem<String>(
          value: value,
          child: Text(value)
      )
  ).toList();

  String _btn1SelectedVal = 'Item 1';
  String? _btn2SelectedVal;
  late String _btn3SelectedVal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('Dropdown and Menu Button'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('DropdownButton'),
          ),
          DropdownButton<String>(
            value: _btn1SelectedVal,
              items: this._dropDownMenuItems,
              onChanged: (String? newValue){
                if(newValue != null){
                  setState((){
                    _btn1SelectedVal = newValue;
                  });
                }
              }
              ), Divider(),
          ListTile(
            title: Text('DropdownButton(using hint)'),
          ),
          DropdownButton<String>(
            value: _btn2SelectedVal,
              hint: Text('Select'),
              items: this._dropDownMenuItems,
              onChanged: (String? newValue){
                if(newValue != null){
                  setState((){
                    _btn2SelectedVal = newValue;
                  });
                }
              }
          ),Divider(),
          ListTile(
            title: Text('PopupMenu Button'),
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => _popUpMenuItems,
            onSelected: (String newValue){
              _btn3SelectedVal = newValue;
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(_btn3SelectedVal),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
