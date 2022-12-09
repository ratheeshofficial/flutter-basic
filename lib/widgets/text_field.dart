import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String _value = '';
  void _onChanged(String value) {
    // print(value + "Value");
    setState(() {
      _value = "onChange " + value;
    });
  }

  void _onSubmit(String value) {
    // print(value + "Value");
    setState(() {
      _value = "onSubmit " + value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_value),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Name',
                // hintText: "Full Name",
                icon: Icon(Icons.people),
              ),
              onChanged: _onChanged,
              onSubmitted: _onSubmit,
              keyboardType: TextInputType.text,
            )
          ],
        ),
      ),
    );
  }
}
