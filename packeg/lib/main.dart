import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> images = [
    "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",
    "https://th.bing.com/th/id/OIG.CO2sHWK_IEYIwzXsC2hX",
    "https://learnopencv.com/wp-content/uploads/2021/04/image-15.png"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(117, 90, 99, 1),
          title: Text("Use CarouselSlider pakeg"),
        ),
        body: CarouselSlider(
            options: CarouselOptions(
                height: 300.0,
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                autoPlayAnimationDuration: Duration(microseconds: 400)),
            items: images
                .map((e) => Image.network(
                      e,
                      fit: BoxFit.cover,
                    ))
                .toList()),
      ),
    );
  }
}
