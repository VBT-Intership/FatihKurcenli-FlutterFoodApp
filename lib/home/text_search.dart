import 'package:flutter/material.dart';

Container buildContainer() {
  return Container(
    margin: EdgeInsets.only(left: 20, top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "What do you want \n to eat today ?",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        IconButton(
          color: Colors.black,
          icon: Icon(Icons.search),
          onPressed: () => debugPrint("searching"),
        ),
      ],
    ),
  );
}
