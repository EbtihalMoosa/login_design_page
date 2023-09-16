import 'package:another_flushbar/flushbar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
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
          title: Text("Flushbar Packeg"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Flushbar(
                  title: "loding ",
                  message:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry",
                  duration: Duration(seconds: 3),
                ).show(context);
              },
              child: Text("Show Dialog")),
        ),
      ),
    );
  }
}
