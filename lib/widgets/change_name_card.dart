import 'package:flutter/material.dart';
import 'package:awesomeapp/widgets/bg_image.dart';
import 'package:awesomeapp/main.dart';
import 'package:awesomeapp/pages/homepage.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    Key key,
    @required this.myText,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String myText;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
     child: Column(
       children: <Widget>[
           background_image(),
           SizedBox(
             height: 20,
           ),
           Text(
             myText,
             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
             ),
           SizedBox(
             height: 20,
           ),
           Padding(
             padding: const EdgeInsets.all(16.0),
             child: TextField(
               controller: _nameController,
               keyboardType: TextInputType.text,
               decoration :InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter the text here",
                    labelText: "Name",)
             ),
           ),
         ],
       ),
     );
  }
}
