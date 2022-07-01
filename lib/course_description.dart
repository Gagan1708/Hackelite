import 'package:flutter/material.dart';
import 'appdevelopment.dart';

class CourseDescription extends StatelessWidget {
  final CardItem item;

  const CourseDescription({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(item.title),
    ),
    body: Column(
      children: [
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.asset(
            item.assetImage,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          item.title,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}