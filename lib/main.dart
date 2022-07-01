import 'package:flutter/material.dart';
import 'firstpage.dart';
void main(){
  runApp(NewPage());
}
class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Page'),
        ),
        body: Selection(),
      ),
    );
  }
}
