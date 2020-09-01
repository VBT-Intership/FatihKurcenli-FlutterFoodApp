import 'package:flutter/material.dart';
import 'package:home_work/home/popular_foods.dart';

Expanded foodList() {
  return Expanded(
    child: Container(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
        child: ListView.builder(
            itemCount: popularfoods.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return buildVerticalCard(context, index);
            }),
      ),
    ),
  );
}

Card buildVerticalCard(BuildContext context, int index) {
  return Card(
    child: Container(
      height: MediaQuery.of(context).size.height * 0.17,
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          buildImage(context, index),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 5.0, 0, 3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitle(index),
                  SizedBox(
                    height: 4,
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildFirstTag(),
                        SizedBox(
                          width: 6,
                        ),
                        buildSecondTag()
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(2.0, 5.0, 0, 3.0),
                          child: Text(
                            'Warunk Buyakruk',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Spacer(),
                        buildPrice(index),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Padding buildPrice(int index) {
  return Padding(
    padding: EdgeInsets.fromLTRB(0.0, 5.0, 0, 3.0),
    child: Text(
      popularfoods[index].price,
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
  );
}

SizedBox buildSecondTag() {
  return SizedBox(
    width: 115.0,
    height: 20.0,
    child: RaisedButton(
      onPressed: () {},
      color: Colors.blueAccent,
      shape: StadiumBorder(),
      child: Text(
        'Makanan Ringan',
        style: TextStyle(
            fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

SizedBox buildFirstTag() {
  return SizedBox(
    width: 100.0,
    height: 20.0,
    child: RaisedButton(
      onPressed: () {},
      color: Colors.orangeAccent,
      shape: StadiumBorder(),
      child: Text(
        'Gorengan',
        style: TextStyle(
            fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Expanded buildTitle(int index) {
  return Expanded(
    flex: 3,
    child: Text(
      popularfoods[index].title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Expanded buildImage(BuildContext context, int index) {
  return Expanded(
    flex: 3,
    child: Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          popularfoods[index].image,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
