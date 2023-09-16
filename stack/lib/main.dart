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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack"),
        ),
        body: Stack(children: [
          Positioned(
            left: 20,
            top: 50,
            bottom: 2,
            right: 50,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.grey,
            ),
          ),
          Align(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          )
        ]),
      ),
    );
  }
}
