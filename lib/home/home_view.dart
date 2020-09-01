import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_work/home/app_bar.dart';
import 'package:home_work/home/food_list_under.dart';
import 'package:home_work/home/food_list_head.dart';
import 'package:home_work/home/popular.dart';
import 'package:home_work/home/text_search.dart';

class MyHomeView extends StatefulWidget {
  @override
  _MyHomeViewState createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {
      debugPrint("hello world");
    };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Column(
        children: [
          buildContainer(),
          listCard(),
          popular(_gestureRecognizer),
          foodList(),
        ],
      ),
    );
  }
}
