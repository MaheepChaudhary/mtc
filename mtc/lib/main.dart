

import 'package:flutter/cupertino.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child :Align(alignment: Alignment.bottomRight,
        child : Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child : Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                color: Colors.red
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.green
                  ),
              Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue
                ),
             ],
            ),
          ),
        ),
      ),
    );
  }
}
