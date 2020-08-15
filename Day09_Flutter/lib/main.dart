import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('LW'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Linux"),
              onPressed: () => print("Hi"), //Lambda expression for single line
            ),
            RaisedButton(
              onPressed: () {
                print("Hello");
                print("Saurabh");
              },
              child: Text("Click me"), //Lambda expression for multi-line
            )
          ],
        ),
      ),
    );
  }
}
