import 'package:flutter/material.dart';

class MyIcon extends StatefulWidget {
  const MyIcon({super.key});

  @override
  State<MyIcon> createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  double _volume = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _volume += 10;
                    print("Icon Pressed value ${_volume}");
                  });
                },
                icon: Icon(Icons.volume_up),
                iconSize: 50,
                color: Colors.blue.shade200,
              ),
            ),
            Text('Volume: ${_volume}')
          ],
        ),
      ),
    );
  }
}
