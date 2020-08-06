import 'package:flutter/material.dart';

homeAppBar() {
  var MyCallIcon = Icon(
    Icons.call,
    color: Colors.black54,
  );
  var MyEmailIcon = Icon(
    Icons.email,
    color: Colors.black54,
  );
  var MyAppsIcon = Icon(
    Icons.apps,
    color: Colors.black54,
  );

  var MyEmailButton = IconButton(
    icon: MyEmailIcon,
    onPressed: email,
  );
  var MyCallButton = IconButton(
    icon: MyCallIcon,
    onPressed: call,
  );

  var myAppBar = AppBar(
    title: Text(
      "Garg Transport Company",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.black),
    ),
    backgroundColor: Colors.amberAccent,
    leading: MyAppsIcon,
    actions: <Widget>[
      MyEmailButton,
      MyCallButton,
    ],
  );
  return myAppBar;
}

email() {
  print("Email button clicked...");
}

call() {
  print("Call button clicked...");
}
