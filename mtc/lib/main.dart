

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

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("firstapp"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget> [
          //DrawerHeader(
            //child: Text("I am drawer",style: TextStyle(color: Colors.white),),
            //decoration: BoxDecoration(
              //color: Colors.pink
            //),
          //),
        UserAccountsDrawerHeader(
            accountName: Text("Maheep Chauhdary"),
            accountEmail: Text("chaudhary.maheep28@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://avatars.githubusercontent.com/u/51289356?s=400&u=a7d9301de6b856b93d859a12482f4209b582c3a7&v=4"),
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
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: (){} ,
          child: Icon(Icons.edit),),
    );
  }
}
