// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
enum SingingCharacter {
  LongTerm,
  ShortTerm
}

class Research extends StatefulWidget {
  const Research({Key? key}) : super(key: key);

  @override
  State<Research> createState() => _Research();
}

class _Research extends State<Research> {
  SingingCharacter? _character = SingingCharacter.LongTerm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body:  Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15.0),
            ),
            height: 80,
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'Are you interested in LongTerm or ShortTerm oriented work?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            title: const Text('LongTerm'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.LongTerm,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('ShortTerm'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.ShortTerm,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          SizedBox(height: 20,),
          FlatButton(
            color: Colors.blue,
            child: Text('Submit'),
            onPressed: () {
              if (_character == SingingCharacter.LongTerm) {

              }
              else{

              }
            },
          ),
        ],
      ),
    );
  }
}
