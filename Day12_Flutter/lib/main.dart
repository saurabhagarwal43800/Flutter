import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());
var os_name;
var version;
var name;

class MyApp extends StatelessWidget {
  web(os_name, version, name) async {
    var url =
        "http://192.168.99.102/cgi-bin/web.py?os_name=$os_name&version=$version&name=$name";
    var response = await http.get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tech App"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              //vertical: 20,
            ),
            width: 300,
            height: 400,
            color: Colors.grey[200],
            child: Column(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                  ),
                  child: TextField(
                    onChanged: (val) {
                      os_name = val;
                    },
                    autofocus: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(height: 2),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter your cmd",
                      labelText: "OS Name",
                      prefixIcon: Icon(Icons.tablet),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (val) {
                      version = val;
                    },
                    autofocus: true,
                    cursorColor: Colors.blue,
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 2),
                    decoration: InputDecoration(
                      hintText: "Enter the version",
                      labelText: "Version",
                      prefixIcon: Icon(Icons.confirmation_number),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (val) {
                      name = val;
                    },
                    autofocus: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(height: 2),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Enter Container Name",
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person),
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.indigoAccent,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  disabledColor: Colors.blue,
                  disabledTextColor: Colors.white,
                  splashColor: Colors.blueGrey,
                  onPressed: () {
                    web(os_name, version, name);
                  },
                  child: Text(
                    "Pull Image",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
