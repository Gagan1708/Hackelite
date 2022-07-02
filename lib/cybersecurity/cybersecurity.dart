import 'package:flutter/material.dart';
import 'course_cyber.dart';
class Cyber extends StatelessWidget {
  static final String title = 'Cyber Security';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MainPage(),
  );
}


class CardItem1{
  final String assetImage;
  final String title;

  const CardItem1({
    required this.assetImage,
    required this.title,
  });
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CardItem1> paid = [
    CardItem1(
      assetImage: 'images/coursera.png',
      title: 'Coursera',
    ),
    CardItem1(
      assetImage: 'images/simplilearn.jpg',
      title: 'Simplilearn',
    ),
    CardItem1(
      assetImage: 'images/tutedude.jpg',
      title: 'TuteDude',
    ),
    CardItem1(
      assetImage: 'images/udacity.png',
      title: 'Udacity',
    ),
    CardItem1(
        title: 'Udemy',
        assetImage: 'images/udemy.png'
    ),
  ];
  List<CardItem1> free = [
    CardItem1(
      assetImage: 'images/sololearn.jpg',
      title: 'SoloLearn',
    ),
    CardItem1(
      assetImage: 'images/scrimba.jpg',
      title: 'Scrimba',
    ),
    CardItem1(
      assetImage: 'images/greatlearning.jpg',
      title: 'GreatLearning',
    ),
  ];
  List<CardItem1> youtube = [
    CardItem1(
      assetImage: 'images/coursera.png',
      title: 'Coursera',
    ),
    CardItem1(
      assetImage: 'images/simplilearn.jpg',
      title: 'Simplilearn',
    ),
    CardItem1(
      assetImage: 'images/tutedude.jpg',
      title: 'TuteDude',
    ),
    CardItem1(
      assetImage: 'images/udacity.png',
      title: 'Udacity',
    ),
    CardItem1(
        title: 'Udemy',
        assetImage: 'images/udemy.png'
    ),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(Cyber.title),
      centerTitle: true,
    ),
    body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Paid Courses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 256,
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) => buildCard(item: paid[index]),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Free Courses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 256,
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) => buildCard(item: free[index]),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'YouTube Courses',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          height: 256,
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) => buildCard(item: youtube[index]),
          ),
        ),
      ],
    ),
  );

  Widget buildCard({
    required CardItem1 item,
  }) =>
      Container(
        width: 200,
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 3/2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: AssetImage(item.assetImage) as ImageProvider,
                      fit: BoxFit.fitWidth,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDescription(
                              item1: item,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              item.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
