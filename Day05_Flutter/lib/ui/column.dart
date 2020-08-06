import 'package:flutter/cupertino.dart';
import 'package:second_app/ui/text.dart';

columnHome() {
  var col1 = Column(
    children: <Widget>[
      text1(),
      Text(""),
      Image.network(
          "https://c1.staticflickr.com/3/2711/4350276437_60cafe56b9_b.jpg"),
      containerText(),
    ],
  );
  return col1;
}
