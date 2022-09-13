import 'package:flutter/material.dart';
import 'package:newapp/main.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen11();
}

class _screen11 extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello from screen 1",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: ((context) {
                      return MyApp();
                    })));
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lime,
                    shadowColor: Colors.green,
                    elevation: 30,
                    textStyle: TextStyle(fontSize: 25)),
                child: Text("Go back to your home page"))
          ],
        )));
  }
}
