import 'package:flutter/material.dart';

class background_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
  return Image.asset(
                "assets/bg.jpg",
                color: Colors.black.withOpacity(0.6),
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.cover
                ); 
  }
}