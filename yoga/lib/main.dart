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
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
        ),

        body: Container(
          width: 400,
          height: 800,
          child: Stack(
            children: [
              Image.asset(
                "assets/yoga1.jpg",
                width: 530,
                height: 180,
              ),
              Positioned(
                left: 30,
                top: 220,
                child: Text("Basic Yoga For Beginners"),
              ),
              Positioned(
                left: 20,
                right: 260,
                child: Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text("125 Review")
                  ],
                ),
              )
            ],
          ),
        ),
        // body: Column(
        //   children: [
        //     Center(
        //       child: Container(
        //         width: 390,
        //         height: 140,
        //         child: Image.asset(
        //           "assets/yoga1.jpg",
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //     ),
        //     Container(
        //       margin: EdgeInsets.only(right: 230),
        //       child: Text(
        //         "Basic Yoga For Beginners",
        //         style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        //       ),
        //     ),
        //     Row(
        //       children: [],
        //     )
        //   ],
        // ),
      ),
    );
  }
}
