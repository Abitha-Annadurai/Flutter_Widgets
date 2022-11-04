import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldTypes extends StatefulWidget {
  const TextFormFieldTypes({Key? key}) : super(key: key);

  @override
  State<TextFormFieldTypes> createState() => _TextFormFieldTypesState();
}

class _TextFormFieldTypesState extends State<TextFormFieldTypes> {
  final GlobalKey<FormFieldState<String>> _pwdFieldKey = GlobalKey<FormFieldState<String>>();
  String? _name;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? _validateName(String? value) {
    if(value?.isEmpty ?? false) {
      return 'Requried Name';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if(!nameExp.hasMatch(value!)){
      return 'Please enter only alphabet';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: Icon(Icons.flutter_dash),
        title: Text('TextFormField'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.person),
                hintText: 'Enter Your Name',
                labelText: 'Name*',
              ),
              onSaved: (String? value){
                this._name = value;
                print('name = $_name');
              },
              validator: _validateName,
            ),
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.phone),
                hintText: 'Enter Your Phone Number',
                labelText: 'Phone Number*',
                prefixText: '+91',
              ),
              onSaved: (String? value){
                this._phoneNumber = value;
                print('Phone Number = $_phoneNumber');
              },
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                filled: true,
                icon: Icon(Icons.email),
                hintText: 'Enter Your Email',
                labelText: 'Email*',
              ),
              onSaved: (String? value){
                this._email = value;
                print('name = $_email');
              },
            ),
            SizedBox(height: 20,),

            PasswordField(
              fieldKey: _pwdFieldKey,
              helperText: 'Enter 8 characters only',
              labelText: 'Password*',
              onFieldSubmitted: (String value) {
                setState((){
                  this._password;
                });
              }
            ),
            SizedBox(height: 20,),

            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Salary',
                prefixText: '\₹',
                suffixText: 'Rupee',
                suffixStyle: TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(height: 20,),

            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your Goal',
                labelText: 'About You',
                helperText: 'This is demo'
              ),
              maxLines: 3,
            )
          ],
        ),
      ),
    );
  }
}


class PasswordField extends StatefulWidget {

  PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        filled: true,
        helperText: widget.helperText,
        labelText: widget.labelText,
        hintText: widget.hintText,
        suffixIcon: GestureDetector(
          onTap:(){
            setState((){
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        )
      ),
    );
  }
}
