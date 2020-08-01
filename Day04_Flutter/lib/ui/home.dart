import 'package:flutter/material.dart';

myapp() {
  var AppText = Text(
    "Garg Transport Company",
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.center,
    style: TextStyle(color: Colors.black),
  );

  var AppsIcon = Icon(
    Icons.apps,
    color: Colors.black,
  );
  var EmailIcon = Icon(
    Icons.email,
    color: Colors.black,
  );
  var CallIcon = Icon(
    Icons.phone,
    color: Colors.black,
  );

  var MyEmailButton = IconButton(
    icon: EmailIcon,
    onPressed: emailPress,
  );

  var MyCallButton = IconButton(
    icon: CallIcon,
    onPressed: callPress,
  );

  var Url =
      "https://image.winudf.com/v2/image1/Y29tLmR0ci5jYXJnby50cnVjay5nYW1lLmZyZWVfc2NyZWVuXzFfMTU0NDUyODM5M18wNDY/screen-1.jpg?fakeurl=1&type=.jpg";

  var MainImage = Image.network(
    Url,
    width: double.infinity,
    height: double.infinity,
  );

  var MyAppBar = AppBar(
    title: AppText,
    backgroundColor: Colors.amberAccent,
    leading: AppsIcon,
    actions: <Widget>[MyEmailButton, MyCallButton],
  );

  var MyHome = Scaffold(
    appBar: MyAppBar,
    body: MainImage, //Center(child: Text("Most Trusted Indian Company")),
    backgroundColor: Colors.black,
  );

  var design = MaterialApp(
    home: MyHome,
    debugShowCheckedModeBanner: false,
  );
  return design;
}

emailPress() {
  print("Clicking email button...");
}

callPress() {
  print("Clicking call button...");
}
