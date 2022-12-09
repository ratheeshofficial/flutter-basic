import 'package:flutter/material.dart';

class RowAndColumn extends StatefulWidget {
  const RowAndColumn({super.key});

  @override
  State<RowAndColumn> createState() => _RowAndColumnState();
}

class _RowAndColumnState extends State<RowAndColumn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Row and Column"),
        ),
        body: Container(
          color: Colors.grey,
          height: 1000,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      height: 100.0,
                      color: Colors.red,
                      child: Text("qwerty"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100.0,
                      width: 200.0,
                      color: Colors.yellow,
                      child: Text('Row'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
