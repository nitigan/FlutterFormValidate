import 'package:flutter/material.dart';

class FromScreen extends StatelessWidget {
  const FromScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          if (details.delta.dx >= 15 || details.delta.dx <= -15) {
            print(details.delta.dx);
            Navigator.pop(context);
          }
        },
        child: Center(
          child: Text(
            'Drag for change',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
