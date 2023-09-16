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
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            //--------------
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/backg.jpg",
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.8),
                      BlendMode.darken,
                    ))),

            //---------------------------
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 83,
                        height: 200,
                        margin: EdgeInsets.only(top: 110, left: 150),
                        child: Text(
                          "FACI",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 200,
                        margin: EdgeInsets.only(top: 110, left: 1),
                        child: Text(
                          "O",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 40,
                        // margin: EdgeInsets.only(top: 1),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(91, 89, 89, 1)
                                    .withOpacity(0.30),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                hintText: "example@gmail.com",
                                hintStyle: TextStyle(
                                    color: Colors.white, fontSize: 12)),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        height: 40,
                        margin: EdgeInsets.only(top: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromRGBO(91, 89, 89, 1)
                                  .withOpacity(0.30),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              hintText: "........",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      // Row(
                      // children: [
                      //   Container(
                      //       child: CheckboxListTile(
                      //           title: Text("Remember me"),
                      //           value: isChecked,
                      //           onChanged: (value) {
                      //             isChecked = value ?? false;
                      //             setState(() {});
                      //           })),

                      //---------------------
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        child: Text(
                          "Forgot password?",
                          style:
                              TextStyle(color: Color.fromRGBO(3, 135, 23, 1)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: 300,
                    height: 40,
                    margin: EdgeInsets.all(20),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Color(0xFF08A860),
                      shape: RoundedRectangleBorder(),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        // height: ,
                        margin: EdgeInsets.only(left: 130),
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // SizedBox(
                      //   width: 40,
                      // ),
                      Container(
                        child: Text(
                          "Signup here",
                          style:
                              TextStyle(color: Color.fromRGBO(3, 135, 23, 1)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
