import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Web App"),
        ),
        body: mybody(),
      ),
    );
  }
}

mybody() {
  return Center(
    child: Column(
      children: <Widget>[
        RaisedButton(
          child: Text("Click date"),
          onPressed: mycgidate,
        ),
        RaisedButton(
          onPressed: mycgical,
          child: Text("Click cal"),
        ),
      ],
    ),
  );
}

mydata() async {
  var url = "http://192.168.99.102/home.html";
  var response = await http.get(url);
  //var status_code = response.statusCode;
  var data = response.body;
  print(data);
}

mycgidate() async {
  var url = "http://192.168.99.102/cgi-bin/date.py";
  var response = await http.get(url);
  //var status_code = response.statusCode;
  var data = response.body;
  print(data);
}

mycgical() async {
  var url = "http://192.168.99.102/cgi-bin/cal.py";
  var response = await http.get(url);
  //var status_code = response.statusCode;
  var data = response.body;
  print(data);
}
