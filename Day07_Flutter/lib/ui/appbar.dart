import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

myappbar() {
  myaccount() {
    Fluttertoast.showToast(
      msg: "Account Selected",
      textColor: Colors.white,
      backgroundColor: Colors.black,
    );
  }

  myphoto() {
    Fluttertoast.showToast(
      msg: "Photo Selected",
      textColor: Colors.white,
      backgroundColor: Colors.black,
    );
  }

  myapps() {
    Fluttertoast.showToast(
      msg: "Apps Selected",
      textColor: Colors.white,
      backgroundColor: Colors.black,
    );
  }

  var addPhotoIcon = IconButton(
    icon: Icon(
      Icons.add_a_photo,
      color: Colors.black,
    ),
    onPressed: myphoto,
  );

  var accountIcon = IconButton(
    icon: Icon(
      Icons.account_circle,
      color: Colors.black,
    ),
    onPressed: myaccount,
  );

  var appsIcon = IconButton(
    icon: Icon(
      Icons.apps,
      color: Colors.black,
    ),
    onPressed: myapps,
  );

  var myappbar = AppBar(
    title: Text(
      "GTC",
      style: TextStyle(
        color: Colors.black,
      ),
    ),
    backgroundColor: Colors.amber,
    leading: appsIcon,
    actions: <Widget>[
      addPhotoIcon,
      accountIcon,
    ],
  );
  return myappbar;
}
