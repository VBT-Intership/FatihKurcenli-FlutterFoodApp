// ignore: camel_case_types
class popularFoods {
  String title;
  String price;
  String image;
  popularFoods({this.title, this.price, this.image});
}

List<popularFoods> popularfoods = [
  popularFoods(
      title: 'Froyp', price: 'Rp.2500', image: 'assets/images/images1.jpg'),
  popularFoods(
      title: 'Eclair', price: 'Rp.4872', image: 'assets/images/images2.jpg'),
  popularFoods(
      title: 'Lolipop', price: 'Rp.9800', image: 'assets/images/images3.jpg'),
  popularFoods(
      title: 'Marshmallow',
      price: 'Rp.1256',
      image: 'assets/images/images4.jpg'),
  popularFoods(
      title: 'Cookie', price: 'Rp.3658', image: 'assets/images/images5.jpg'),
];
