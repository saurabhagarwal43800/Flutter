import 'package:flutter/material.dart';

truck() {
  var imageURL =
      "https://c1.staticflickr.com/3/2711/4350276437_60cafe56b9_b.jpg";
  var decorImage = DecorationImage(
    fit: BoxFit.cover,
    image: NetworkImage(
      imageURL,
    ),
  );
  return decorImage;
}
