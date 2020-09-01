import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: IconButton(
      color: Colors.black,
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => debugPrint("back Button"),
    ),
    actions: <Widget>[
      IconButton(
        color: Colors.black,
        icon: const Icon(Icons.short_text), // icon.short_text
        tooltip: 'Show Snackbar',
        onPressed: () {
          debugPrint("Menu Button");
        },
      ),
    ],
  );
}
