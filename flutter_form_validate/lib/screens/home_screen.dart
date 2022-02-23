import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import './form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Icon(Icons.add, size: 40),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return FromScreen();
                }),
              );
            },
          ),
        ],
      ),
      body: GestureDetector(
        onDoubleTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return FromScreen();
            }),
          );
        },
        child: Center(
          child: Text(
            'Double Click',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
