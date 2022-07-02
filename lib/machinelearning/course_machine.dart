import 'package:flutter/material.dart';
import 'machinelearning.dart';

class CourseDescription extends StatelessWidget {
  final CardItem1 item1;

  const CourseDescription({
    Key? key,
    required this.item1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(item1.title),
    ),
    body: Column(
      children: [
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.asset(
            item1.assetImage,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          item1.title,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20,),

      ],
    ),
  );
}