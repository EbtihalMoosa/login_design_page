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
          backgroundColor: Colors.white,
          // title: Text("Title"),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),

        //----------------
        body: Column(
          children: [
            Center(
              child: Container(
                width: 480,
                height: 180,
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(90)),
                  child: Image.asset(
                    "assets/yoga1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 80),
                child: Text(
                  "Basic Yoga For Beginners",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ))
          ],
        ),
      ),
    );
  }
}
