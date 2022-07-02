// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quizpage/appdevelopment.dart';
import 'package:quizpage/cloudcomputing/cloudcomputing.dart';
import 'package:quizpage/cybersecurity/cybersecurity.dart';
import 'package:quizpage/iot/iot.dart';
import 'package:quizpage/machinelearning/machinelearning.dart';
import 'package:quizpage/web/webdevelopment.dart';
class Interested extends StatefulWidget {
  const Interested({Key? key}) : super(key: key);

  @override
  State<Interested> createState() => _InterestedState();
}
enum SingingCharacter {
  WebDevelopment,
  AppDevelopment,
  IOT,
  CloudComputing,
  CyberSecurity,
  MachineLearning
}
class _InterestedState extends State<Interested> {
  SingingCharacter? _character = SingingCharacter.WebDevelopment;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Selecting domain'),
        ),
        body: Column(
          children: [
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
                  'Select the interested domain in the given list of domains',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('Web Development'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.WebDevelopment,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('App Development'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.AppDevelopment,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('IOT'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.IOT,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('Cloud Computing'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.CloudComputing,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('Cyber Security'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.CyberSecurity,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              title: const Text('Machine Learning'),
              leading: Radio<SingingCharacter>(
                value: SingingCharacter.MachineLearning,
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
              onPressed: (){
                if(_character == SingingCharacter.WebDevelopment){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebDev()),
                  );
                }
                else if(_character == SingingCharacter.AppDevelopment){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppDev()),
                  );
                }
                else if(_character == SingingCharacter.IOT){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IOT()),
                  );
                }
                else if(_character == SingingCharacter.CloudComputing){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cloud()),
                  );
                }
                else if(_character == SingingCharacter.CyberSecurity){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cyber()),
                  );
                }
                else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Machine()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
