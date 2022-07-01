import 'package:flutter/material.dart';
import 'package:quizpage/course_description.dart';
class AppDev extends StatelessWidget {
  static final String title = 'Horizontal ListView';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: MainPage(),
  );
}


class CardItem {
  final String assetImage;
  final String title;

  const CardItem({
    required this.assetImage,
    required this.title,
  });
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CardItem> paid = [
    CardItem(
      assetImage: 'images/coursera.png',
      title: 'Coursera',
    ),
    CardItem(
      assetImage: 'images/simplilearn.jpg',
      title: 'Simplilearn',
    ),
    CardItem(
      assetImage: 'images/tutedude.jpg',
      title: 'TuteDude',
    ),
    CardItem(
      assetImage: 'images/udacity.png',
      title: 'Udacity',
    ),
    CardItem(
        title: 'Udemy',
        assetImage: 'images/udemy.png'
    ),
  ];
  List<CardItem> free = [
    CardItem(
      assetImage: 'images/sololearn.jpg',
      title: 'SoloLearn',
    ),
    CardItem(
      assetImage: 'images/scrimba.jpg',
      title: 'Scrimba',
    ),
    CardItem(
      assetImage: 'images/greatlearning.jpg',
      title: 'GreatLearning',
    ),
  ];
  List<CardItem> youtube = [
    CardItem(
      assetImage: 'images/coursera.png',
      title: 'Coursera',
    ),
    CardItem(
      assetImage: 'images/simplilearn.jpg',
      title: 'Simplilearn',
    ),
    CardItem(
      assetImage: 'images/tutedude.jpg',
      title: 'TuteDude',
    ),
    CardItem(
      assetImage: 'images/udacity.png',
      title: 'Udacity',
    ),
    CardItem(
        title: 'Udemy',
        assetImage: 'images/udemy.png'
    ),
  ];


  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(AppDev.title),
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
    required CardItem item,
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
                              item: item,
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
