// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

enum SingingCharacter { Yes, No }

class ShortProject extends StatefulWidget {
  const ShortProject({Key? key}) : super(key: key);

  @override
  State<ShortProject> createState() => _ShortProject();
}

class _ShortProject extends State<ShortProject> {
  SingingCharacter? _character = SingingCharacter.Yes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Column(
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
                'Are you interested in doing hardware related work?',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
              ),
            ),
          ),
          SizedBox(height: 20,),
          ListTile(
            title: const Text('Yes'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Yes,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('No'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.No,
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
              if (_character == SingingCharacter.Yes) {
              } else {}
            },
          ),
        ],
      ),
    );
  }
}
