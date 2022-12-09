import 'package:flutter/material.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  void showBottom() {
    print("show bottom");

    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: Text("Show Bottomn"),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 221, 221),
        appBar: AppBar(
          title: Text("Bottom Sheet"),
        ),
        body: Center(
          child: ElevatedButton.icon(
            label: Text('click me'),
            icon: Icon(Icons.add),
            onPressed: showBottom,
          ),
        ),
      ),
    );
  }
}
