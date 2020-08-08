import 'package:flutter/material.dart';
import 'package:hot_app/ui/IconButton.dart';

myAppBar() {
  var myApp = AppBar(
    title: Text(
      "GTC",
      textDirection: TextDirection.ltr,
    ),
    backgroundColor: Colors.black,
    leading: appsIcon(),
    actions: <Widget>[
      emailIcon(),
      callIcon(),
    ],
  );
  return myApp;
}
