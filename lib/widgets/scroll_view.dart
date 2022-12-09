import 'package:flutter/material.dart';

class MyScrollView extends StatefulWidget {
  const MyScrollView({super.key});

  @override
  State<MyScrollView> createState() => _MyScrollViewState();
}

class _MyScrollViewState extends State<MyScrollView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SingleChildScrollView"),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
