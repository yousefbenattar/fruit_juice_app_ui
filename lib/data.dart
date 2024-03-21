import 'package:flutter/material.dart';

class Fruit {
  String? name;
  String? img;
  Color? color ;
  Fruit({this.name,this.img,this.color});
}

List<Fruit> fruitlist = [
  Fruit(name: 'Mango',img: 'assets/1.png',color:const Color.fromARGB(255, 241, 178, 231)),
  Fruit(name: 'Apples',img: 'assets/2.png',color:const Color.fromARGB(255, 206, 107, 198)),
  Fruit(name: 'Kiwi',img: 'assets/3.png',color:const Color.fromARGB(255, 196, 240, 206)),
  Fruit(name: 'Grapes',img: 'assets/4.png',color:const Color.fromARGB(255, 209, 40, 153)),
  Fruit(name: 'Mango',img: 'assets/1.png',color:const Color.fromARGB(255, 241, 178, 231)),
  Fruit(name: 'Apples',img: 'assets/2.png',color:const Color.fromARGB(255, 206, 107, 198)),
  Fruit(name: 'Kiwi',img: 'assets/3.png',color:const Color.fromARGB(255, 196, 240, 206)),
  Fruit(name: 'Grapes',img: 'assets/4.png',color:const Color.fromARGB(255, 209, 40, 153)),
];

class Juice {
  String? name;
  String? img ;
  int? prix ;
  Color? color ;
  Color? backcolor ;
  Juice({this.name,this.img,this.prix,this.color,this.backcolor});
}

List<Juice> juices = [
  Juice(name: 'Mango juice',img: 'assets/5.png',prix:25,color:const Color.fromARGB(255, 214, 182, 133),backcolor:Colors.orange),
  Juice(name: 'Apple juice',img: 'assets/6.png',prix:15,color:const Color.fromARGB(255, 245, 184, 247),backcolor:Color.fromARGB(255, 215, 96, 231)),
  Juice(name: 'Kiwi juice',img: 'assets/7.png',prix:35,color:const Color.fromARGB(255, 173, 235, 154),backcolor:Color.fromARGB(255, 86, 192, 82)),
  Juice(name: 'Grapes juice',img: 'assets/8.png',prix:40,color:const Color.fromARGB(255, 130, 84, 236),backcolor:Color.fromARGB(255, 119, 22, 184)),
Juice(name: 'Mango juice',img: 'assets/5.png',prix:25,color:const Color.fromARGB(255, 214, 182, 133),backcolor:Colors.orange),
  Juice(name: 'Apple juice',img: 'assets/6.png',prix:15,color:const Color.fromARGB(255, 245, 184, 247),backcolor:Color.fromARGB(255, 215, 96, 231)),
  Juice(name: 'Kiwi juice',img: 'assets/7.png',prix:35,color:const Color.fromARGB(255, 173, 235, 154),backcolor:Color.fromARGB(255, 86, 192, 82)),
  Juice(name: 'Grapes juice',img: 'assets/8.png',prix:40,color:const Color.fromARGB(255, 130, 84, 236),backcolor:Color.fromARGB(255, 119, 22, 184)),
];

class Offer {
  String? img;
  String? name;
  Color? colors;
  Offer({this.name,this.img,this.colors});
}
List<Offer> offers =[
  Offer(name: 'Strawberry\nJuice',img: 'assets/a.png',colors: Colors.red),
  Offer(name: 'Mango\njuice',img: 'assets/b.png',colors: Colors.purple),
  Offer(name: 'Apple\nJuice',img: 'assets/c.png',colors: Colors.green),
  Offer(name: 'Kiwi\nJuice',img: 'assets/d.png',colors: Colors.yellow),
];