import 'package:flutter/material.dart';

class background_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
  return Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.cover
                ); 
  }
}