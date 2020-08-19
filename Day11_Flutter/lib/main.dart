import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:input_app/second.dart';

void main() => runApp(MyApp());
var os_name;
var version;

class MyApp extends StatelessWidget {
  web(cmd) async {
    var url = "http://192.168.99.102/cgi-bin/${cmd}.py";
    var response = await http.get(url);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Input App"),
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
                    decoration: InputDecoration(
                      hintText: "Enter your cmd",
                      labelText: "Linux Cmd",
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
                    style: TextStyle(height: 2),
                    decoration: InputDecoration(
                      hintText: "Enter any message",
                      labelText: "Message",
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
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    disabledColor: Colors.blue,
                    disabledTextColor: Colors.white,
                    splashColor: Colors.blueGrey,
                    onPressed: () {
                      /*Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondScreen(),
                      ));
                      */
                      web(os_name);
                      print(version);
                    },
                    child: Text(
                      "Run",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
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
