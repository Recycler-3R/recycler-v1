class Items {
  String img;
  String itemname;

  Items({required this.img, required this.itemname});
}

List<Items> items = [
  Items(img: 'images/sampleitem.png', itemname: 'coffeecup'),
  Items(img: 'images/soapbottle.png', itemname: 'soapbottle'),
];
