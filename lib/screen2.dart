import 'package:flutter/material.dart';
import 'package:newapp/main.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _nameState();
}

class _nameState extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello from screen 2",
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 57, 7, 66)),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return MyApp();
                  })));
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shadowColor: Colors.cyan,
                  elevation: 30,
                  textStyle: TextStyle(fontSize: 25)),
              child: Text("Go back to your home page"),
            ),
          ],
        )));
  }
}
