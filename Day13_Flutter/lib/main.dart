import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Async App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Async App"),
        ),
        body: Text("Body"),
      ),
    );
  }
}
