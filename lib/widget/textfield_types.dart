import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldTypes extends StatefulWidget {
  const TextFieldTypes({Key? key}) : super(key: key);

  @override
  State<TextFieldTypes> createState() => _TextFieldTypesState();
}

class _TextFieldTypesState extends State<TextFieldTypes> {

  Widget _buildBorderless(){
    return TextField(
      maxLines: 3,
      decoration: InputDecoration.collapsed(hintText: 'Enter Text'),
    );
  }

  bool _numberisValid = true;
  Widget _buildNumber(){
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        icon: Icon(Icons.currency_rupee),
        labelText: 'Enter Number',
        errorText: _numberisValid ? null : 'Please Enter Number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        )
      ),
      onSubmitted: (value) => Fluttertoast.showToast(msg: 'You Entered: ${int.parse(value)}'),
      onChanged: (String value){
        final v = int.tryParse(value);
        if(v == null){
          setState((){
            _numberisValid = false;
          });
        } else{
          setState((){
            _numberisValid = true;
          });
        }
      },
    );
  }

  final _controller = TextEditingController();
  Widget _buildMultiline(){
    return TextField(
      controller: this._controller,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counterText: '${_countWords(text: this._controller.text)}',
        labelText: 'Enter Paragraph',
          alignLabelWithHint: true,
        hintText: 'Tell me about yourself',
        border: OutlineInputBorder(),
      ),
      onChanged: (text) => setState((){}),
    );
  }
  int _countWords({required String text}) {
    final TrimmedText = text.trim();
    if(TrimmedText.isEmpty){
      return 0;
    } else {
      return TrimmedText.split(RegExp('\\s+')).length;
    }
  }

  bool _showPwd = false;
  Widget _buildPwd(){
    return TextField(
      obscureText: this._showPwd,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        prefixIcon: Icon(Icons.security),
        suffixIcon: IconButton(
          icon: Icon(Icons.remove_red_eye, color: this._showPwd ? Colors.black : Colors.grey,),
          onPressed: () {
            setState((){
              this._showPwd = !this._showPwd;
            });
          },),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('TextField'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Text('1. Borderless Input Field', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 9,),
              _buildBorderless(),
              SizedBox(height: 20,),
              Text('2. Number Input Field', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 9,),
              _buildNumber(),
              SizedBox(height: 20,),
              Text('3. Multiline Input Field', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 20,),
              _buildMultiline(),
              SizedBox(height: 20,),
              Text('4. Password Input Field', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              _buildPwd(),
            ],
          ),
        ),
      ),
    );
  }
}
