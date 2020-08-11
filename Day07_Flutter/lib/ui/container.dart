import 'package:flutter/material.dart';

container_card() {
  var container_card = Container(
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.amber,
        width: 3,
      ),
    ),
    margin: EdgeInsets.all(40),
    alignment: Alignment.center,
    //padding: EdgeInsets.all(40),
    width: 300,
    height: 200,
    //color: Colors.amber,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Saurabh Agarwal",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.email,
            ),
            Text(
              "  saurabhagarwal43800@gmail.com",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    ),
  );
  return container_card;
}

container_profile() {
  var container_profile = Container(
    //margin: EdgeInsets.all(1),
    //padding: EdgeInsets.all(60),
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(50),
      border: Border.all(
        color: Colors.amber,
        width: 3,
      ),
      image: DecorationImage(
        image: NetworkImage(
            "https://avatars0.githubusercontent.com/u/33370952?s=460&u=29c5956e25baa962e66bc9ab201e162b9b482f12&v=4"),
        fit: BoxFit.cover,
      ),
    ),
    alignment: Alignment.center,
    width: 100,
    height: 100,
  );
  return container_profile;
}
