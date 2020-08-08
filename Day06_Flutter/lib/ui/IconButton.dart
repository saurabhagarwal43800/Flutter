import 'package:flutter/material.dart';
import 'gtc_toast.dart';

appsIcon() {
  var appsIcon = IconButton(
    icon: Icon(
      Icons.apps,
      color: Colors.white,
    ),
    onPressed: gtc_apps,
  );
  return appsIcon;
}

emailIcon() {
  var emailIcon = IconButton(
    icon: Icon(Icons.email),
    onPressed: gtc_email,
  );
  return emailIcon;
}

callIcon() {
  var callIcon = IconButton(
    icon: Icon(Icons.call),
    onPressed: gtc_call,
  );
  return callIcon;
}
