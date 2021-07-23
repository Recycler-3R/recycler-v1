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
  'dirtyshirt',
  'garbagebag',
  'gas',
  'plastic',
  'soda',
  'totebag',
  'waterbottle',
  'tupper1',
  'urinecont',
  'fecescont',
  'comb2',
  'cd',
  'beanbag',
];

var rand = Random();
List<String> item = [
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
  items[rand.nextInt(15)],
];
