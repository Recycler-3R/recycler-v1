import 'dart:math';
// class Items {
//   String img;
//   String itemname;

//   Items({required this.img, required this.itemname});
// }

// List<Items> items = [
//   Items(img: 'images/items/coffeecup.png', itemname: 'coffeecup'),
//   Items(img: 'images/items/soapbottle.png', itemname: 'soapbottle'),
// ];

List<String> items = [
  'coffeecup',
  'soapbottle',
  'comb',
  'dirtyshirt',
  'garbagebag',
  'gas',
  'plastic',
  'soda',
  'totebag',
  'waterbottle',
];

var rand = Random();
List<String> item = [
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
  items[rand.nextInt(10)],
];
