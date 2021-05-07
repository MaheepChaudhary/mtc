

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesomeapp/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: Homepage(),
    theme: ThemeData(
      primarySwatch: Colors.green
      ),
    )
  );
}

