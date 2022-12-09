import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAlertDialogBox(),
    );
  }
}

class MyAlertDialogBox extends StatefulWidget {
  const MyAlertDialogBox({super.key});

  @override
  State<MyAlertDialogBox> createState() => _MyAlertDialogBoxState();
}

class _MyAlertDialogBoxState extends State<MyAlertDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Open Alert Dialog"),
          onPressed: () async {
            showAlertBox(context);
          },
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Text("sd"),
      // ),
    );
  }
}

void showAlertBox(context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Text("hi"),
      title: Text("Alert !"),
      actions: [
        Center(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.yellow,
              padding: EdgeInsets.all(10),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("ok"),
          ),
        )
      ],
    ),
  );
}
