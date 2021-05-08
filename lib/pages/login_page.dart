import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:awesomeapp/bg_image.dart';
import 'package:awesomeapp/pages/homepage.dart';

class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
        ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
        background_image(),
        Center(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(  
                          hintText: "Username",
                          labelText: "Username"
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                          hintText: "Password",
                          labelText: "Password",
 
                        )
                      )
                    ]
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton( onPressed: (){
                  // Navigator.push(
                  //   context, 
                  //   MaterialPageRoute(builder: (context) => Homepage()));
                  Constants.prefs.setBool("LoggedIn", true);
                  Navigator.pushReplacementNamed(context, "/home");
                },
                  color: Colors.green[500],
                  child: Text("Sign In"),
                  textColor: Colors.white,),
              )
            ],         
          ),
      ),
    ),
  ),
        ),
  ],
),
);
}
}