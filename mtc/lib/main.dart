import 'package:flutter/material.dart';

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
      body: Container(
        color: Colors.red,
        child: Center(child: Text("Hi flutter")),
      ),
    );
  }
}
