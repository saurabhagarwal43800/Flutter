import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MaterialApp(
      home: MyAppSF(),
      debugShowCheckedModeBanner: false,
    ));

class MyAppSF extends StatefulWidget {
  @override
  _MyAppSFState createState() => _MyAppSFState();
}

class _MyAppSFState extends State<MyAppSF> {
  var cmd;
  var webdata;
  myweb(cmd) async {
    var url = "http://192.168.99.102/cgi-bin/test.py?x=${cmd}";
    var response = await http.get(url);
    webdata = response.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State App"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.6,
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Text(
                "Enter your linux command",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                onChanged: (value) {
                  cmd = value;
                },
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                onPressed: () {
                  myweb(cmd);
                },
                child: Text("Click here..."),
              ),
              Text(
                "Output:\n",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                webdata ?? "Loading Output...",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
