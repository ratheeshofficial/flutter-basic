import 'package:flutter/material.dart';

void main() {
  runApp(StateLess());
}

class StateLess extends StatelessWidget {
  const StateLess({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text("StateLess Widget"));
  }
}
