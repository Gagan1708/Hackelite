import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:first_project/page/shoe_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItem({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<CardItem> items = [

    CardItem(
      urlImage:
      'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      title: 'Nike Free Run',
      subtitle: '\$99',
    ),
    CardItem(
      title: 'Nike Airforce',
      urlImage:
      'https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      subtitle: '\$87',
    ),
    CardItem(
      title: 'Air Jordan',
      urlImage:
      'https://images.unsplash.com/photo-1575537302964-96cd47c06b1b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      subtitle: '\$109',
    ),
    CardItem(
      title: 'Hummel',
      urlImage:
      'https://images.unsplash.com/photo-1609250291996-fdebe6020a8f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      subtitle: '\$93',
    ),
    CardItem(
      title: 'Puma',
      urlImage:
      'https://images.unsplash.com/photo-1608231387042-66d1773070a5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      subtitle: '\$72',
    ),
    CardItem(
      title: 'New Balance',
      urlImage:
      'https://images.unsplash.com/photo-1465453869711-7e174808ace9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      subtitle: '\$53',
    ),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(MyApp.title),
      centerTitle: true,
    ),

    body: ListView(
      children: [
        Container(
          height: 256,
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) => buildCard(item: items[index]),
          ),
        ),
        Container(
          height: 256,
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) => buildCard(item: items[index]),
          ),
        ),
        Container(
          height: 256,
          child: ListView.separated(
            padding: EdgeInsets.all(16),
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            separatorBuilder: (context, _) => SizedBox(width: 12),
            itemBuilder: (context, index) => buildCard(item: items[index]),
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
                aspectRatio: 4 / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: Ink.image(
                      image: NetworkImage(item.urlImage),
                      fit: BoxFit.cover,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShoePage(
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
            Text(
              item.subtitle,
              style: TextStyle(fontSize: 20, color: Colors.black54),
            ),
          ],
        ),
      );
}