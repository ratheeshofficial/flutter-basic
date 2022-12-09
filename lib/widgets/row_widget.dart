import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("APP PAR")),
      body: Container(
        height: 1000,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              "data 1",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 50),
            // Spacer(),
            Text("data 1"),
          ],
          // children: [
          //   Container(
          //     color: Colors.red,
          //     height: 100.0,
          //     width: 100.0,
          //     child: Text("Box 1"),
          //   ),
          //   Container(
          //     color: Colors.green,
          //     height: 100.0,
          //     width: 100.0,
          //     child: Text("Box 2"),
          //   ),
          //   Container(
          //     color: Colors.blue,
          //     height: 100.0,
          //     width: 100.0,
          //     child: Text("Box 3"),
          //   )
          // ]),
        ),
      ),
    ));
  }
}
