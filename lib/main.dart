import 'package:flutter/material.dart';
import 'package:newapp/screen.dart';
import 'package:newapp/screen2.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeState();
  }
}

class HomeState extends StatefulWidget {
  const HomeState({super.key});

  @override
  State<HomeState> createState() => _HomeState();
}

class _HomeState extends State<HomeState> {
  String city = "";
  String city2 = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Home Page",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return screen1();
                  }));
                }),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime,
                    shadowColor: Colors.green,
                    elevation: 30,
                    textStyle: TextStyle(fontSize: 25)),
                child: Text("Go to screen 1")),
            Divider(height: 20),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return screen2();
                  }));
                }),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shadowColor: Colors.cyan,
                    elevation: 30,
                    textStyle: TextStyle(fontSize: 25)),
                child: Text("Go to screen 2"))
          ],
        )));
  }
}
