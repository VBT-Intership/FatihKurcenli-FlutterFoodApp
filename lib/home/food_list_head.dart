import 'package:flutter/material.dart';

Widget circularMethod(image) {
  return AspectRatio(
    aspectRatio: 1.1 / 1.2,
    child: Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Container listCard() {
  return Container(
    color: Colors.transparent,
    margin: EdgeInsets.only(top: 10, right: 10),
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            circularMethod(
                'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/x17/16714-birthday-cake-600x600.jpg?ext=.jpg'),
            circularMethod(
                'https://minimalistbaker.com/wp-content/uploads/2015/08/AMAZING-5-Ingredient-Vanilla-Coconut-Ice-Cream-Incredibly-simple-perfectly-sweet-INSANELY-creamy-vegan-glutenfree-icecream-dessert-recipe-vanilla-coconuticecream-coconut.jpg'),
            circularMethod(
                'https://minimalistbaker.com/wp-content/uploads/2013/08/Dairy-Free-Chocolate-Ice-Cream-recipe-via-minimalistbaker.com_-2.jpg'),
            circularMethod(
                'https://cdn.yemek.com/mnresize/940/940/uploads/2014/07/pancake-yemekcom.jpg'),
            circularMethod(
                'https://images-na.ssl-images-amazon.com/images/I/71HI72z65BL._AC_SL1500_.jpg'),
            circularMethod(
                'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2013/6/28/0/FNK_Apple-Pie_s4x3.jpg.rend.hgtvcom.406.305.suffix/1382545039107.jpeg')
          ],
        ),
      ),
    ),
  );
}
