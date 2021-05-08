import 'package:awesomeapp/widgets/drawer.dart';
import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  String url = "https://jsonplaceholder.typicode.com/photos";
  List data;

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState(() {}); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("awesomeapp"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: (){
              Constants.prefs.setBool("LoggedIn", false);
              Navigator.pushReplacementNamed(context, "/login");
            })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
         child: data!=null
         ? ListView.builder(
           itemBuilder: (context, index){
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: ListTile(
                 title: Text(data[index]["title"]),
                 leading: Image.network(data[index]["url"]),
                 subtitle: Text("ID: ${data[index]["id"]}"),
               ),
             );
           },
           itemCount: data.length,
           )
        :Center(child: CircularProgressIndicator()
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