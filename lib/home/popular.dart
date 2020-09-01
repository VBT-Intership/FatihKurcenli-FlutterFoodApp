import 'package:flutter/material.dart';

Padding popular(_gestureRecognizer) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      margin: EdgeInsets.only(top: 8),
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 65,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/images/heart.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 7, left: 10),
                  width: 200,
                  height: 80,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Popular \n',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 23),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'You can Check out',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                              recognizer: _gestureRecognizer,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.only(left: 25),
                  child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () => debugPrint("Popular Button"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
