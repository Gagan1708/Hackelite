// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:quizpage/appdevelopment.dart';
class LongProjectNO extends StatefulWidget {
  const LongProjectNO({Key? key}) : super(key: key);

  @override
  State<LongProjectNO> createState() => _LongProjectNOState();
}

class _LongProjectNOState extends State<LongProjectNO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15.0),
              ),
              height: 120,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'App Development is the perfect fit for you!',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Check out the provided courses',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          FlatButton(
            color: Colors.blue,
            child: Text('Let\'s Go'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  AppDev()),
              );
            },
          ),
        ],
      ),
    );
  }
}
