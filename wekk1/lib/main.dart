import 'package:flutter/material.dart';
import 'package:wekk1/TextSection.dart';
import 'package:wekk1/TitleSection.dart';
import 'ButtonSection.dart';
import 'ImageSection.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageSection(image: 'assets/lake.jpg'),
                titleSection(
                  name: 'Oeschinen Lake Campground',
                  location: 'Kandersteg, Switzerland',
                  rating: 5.0,
                ),
                ButtonSection(),
                TextSection(
                  description:
                      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from  Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
