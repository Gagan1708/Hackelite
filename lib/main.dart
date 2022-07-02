// ignore_for_file: deprecated_member_use


import 'package:flutter/material.dart';
import 'package:quizpage/firstpage.dart';
import 'package:quizpage/interested.dart';

void main() {
  runApp(MaterialApp(home: NewPage(),debugShowCheckedModeBanner: false,));
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Text(
          'Welcome',
          style: TextStyle(color: Colors.blue, fontSize: 24),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/img.png'),
              height: 250,
              width: 400,
            ),
            SizedBox(height: 20,),
            Text(
              'Hello There',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  "Our app works on basis of how confident on your skills and is divided it into two sections which are L-1 and L-1 respectively.please pick L-1 if you're confident in your skills and L-2 if you aren't.",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Selection()),
                );
              },
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                "Beginner",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Interested()),
                );
              },
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Text(
                "Know the interested domain",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
