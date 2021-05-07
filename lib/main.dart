

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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
         child: Card(
          child: Column(
            children: <Widget>[
              Image.asset(
                "assets/bg.jpg",
                fit: BoxFit.cover
                ),
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
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
        UserAccountsDrawerHeader(
            accountName: Text("Maheep Chauhdary"),
            accountEmail: Text("chaudhary.maheep28@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/51289356?s=400&u=a7d9301de6b856b93d859a12482f4209b582c3a7&v=4"),
            ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Accounts"),
          subtitle: Text("Maheep Chaudhary"),
          trailing: Icon(Icons.edit)
        ),
        ListTile(
            leading: Icon(Icons.person),
            title: Text("Password"),
            subtitle: Text("********"),
            trailing: Icon(Icons.send)
        ),
          ],
        ),
      ),
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

