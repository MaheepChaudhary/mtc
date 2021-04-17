

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firstapp"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(2.0,5.0),
            )],
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.red]),
            ),
          child: Text(
            "I am a Box.",
            textAlign: TextAlign.center,
            style:TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
