import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Button"),
        ),
        body: Center(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Color.fromARGB(255, 5, 5, 4),
              shadowColor: Color.fromARGB(255, 221, 220, 210), // foreground
              padding: EdgeInsets.all(25.0),
              // splashFactory: Colors.blue,
            ),
            onPressed: () {
              print("Button Clicked");
            },
            child: Text(
              'TextButton with custom foreground',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
