import 'package:awesomeapp/change_name_card.dart';
import 'package:awesomeapp/drawer.dart';
import 'package:flutter/material.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";

  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("awesomeapp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
         child: SingleChildScrollView(
         child: ChangeNameCard(myText: myText, nameController: _nameController),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            myText = _nameController.text;
            setState(() {});
          } ,
          child: Icon(Icons.refresh),),
    );
  }
}