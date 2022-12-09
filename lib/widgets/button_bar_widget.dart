import 'package:flutter/material.dart';

class ButtonBarWidget extends StatefulWidget {
  const ButtonBarWidget({super.key});

  @override
  State<ButtonBarWidget> createState() => _ButtonBarWidgetState();
}

class _ButtonBarWidgetState extends State<ButtonBarWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Bar"),
        ),
        body: Container(
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  print("Icon Pressed");
                },
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  print("Icon Pressed");
                },
                icon: Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {
                  print("Icon Pressed");
                },
                icon: Icon(Icons.people),
              ),
              IconButton(
                onPressed: () {
                  print("Icon Pressed");
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
