import 'package:awesomeapp/widgets/drawer.dart';
import 'package:awesomeapp/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomepageFB extends StatefulWidget {
  @override
  _HomepageFBState createState() => _HomepageFBState();
}

class _HomepageFBState extends State<HomepageFB> {
  // TextEditingController _nameController = TextEditingController();
  // var myText = "Change Me";


  // @override
  // void initState() {
  //   super.initState();
  //   getData();
  // }

  Future getData() async {
    String url = "https://jsonplaceholder.typicode.com/photos";
    List data;
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    return data; 
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
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          switch(snapshot.connectionState){
            case ConnectionState.none:
              return Center(
                child: Text("Fetch Something"),
                );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),);
            case ConnectionState.done:
              if (snapshot.hasError){
                return Center(child: Text("Some Error Occured"),
                );
              }
            return ListView.builder(
                itemBuilder: (context, index){
                  return Padding(
                padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(snapshot.data[index]["title"]),
                    leading: Image.network(snapshot.data[index]["url"]),
                    subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
               ),
             );
           },
           itemCount: snapshot.data.length,
              );
            }
          },
        ),
      drawer: MyDrawer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            // myText = _nameController.text;
            // setState(() {});
          } ,
          child: Icon(Icons.refresh),),
    );
  }
}