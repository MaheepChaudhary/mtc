

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesomeapp/pages/homepage.dart';
import 'package:awesomeapp/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Awesome App",
    home: login_page(),
    theme: ThemeData(
      primarySwatch: Colors.green
      ),
      routes: {
        "/login": (context) => login_page(),
        "/home":  (context) => Homepage()
      },
    )
  );
}

  

