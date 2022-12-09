import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Check Box"),
        ),
        body: Container(
          child: Center(
            child: Row(
              children: [
                Text("Mon"),
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? isChecked) {
                    print("${isChecked}");
                    setState(() {
                      _isChecked = isChecked!;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
