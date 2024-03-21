import 'package:flutter/material.dart';

import 'data.dart';
import 'home.dart';

class Item extends StatelessWidget {
  const Item({super.key,required this.juise});
 final Juice juise ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 218, 169, 153),
        actions:const [
          Padding(
            padding:  EdgeInsets.only(right:16.0),
            child: CircleAvatar(backgroundColor: Colors.green,radius: 25),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: color,
        child: Stack(children: [
          Positioned(child: Container(
            decoration:const BoxDecoration(
              color: Color.fromARGB(255, 218, 169, 153),
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(25),bottomLeft: Radius.circular(25))
            ),
            
            height: 200,
            width: MediaQuery.of(context).size.width,
          )),
          Positioned(
            child: ListView(
            children: [
            Image(image: AssetImage(juise.img!)),
            item("S",juise.name!,25,juise.img!),
            box,
            item("S",juise.name!,25,juise.img!),
            box,
            item("S",juise.name!,25,juise.img!),
          ],))
        ],),
      ),
      bottomNavigationBar: BottomAppBar(
        color: color,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.orange,
          ),
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             
            children: [
          const Row(
            
            children: [
            Text('Total',style: TextStyle(fontSize: 20),),
            SizedBox(width: 5),
            Text('\$200',style: TextStyle(fontSize: 20),),
            ],),
            Row(
            
              children: [Container(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
               decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            color: Colors.white,
          ),child: Text('View Cart',
          style: TextStyle(color: const Color.fromARGB(255, 184, 166, 115),fontSize: 15),),
            )],)
          ],),),),
    );
  }
}

Widget item (String size , String name , int prix,String img) {
  return Container(
    margin:const EdgeInsets.only(right: 15,left: 15),
    height: 100,
    width: double.maxFinite,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color:const Color.fromARGB(255, 92, 80, 76)
    ),
    child: Stack(children: [
      Positioned(
        top: 0,
        left: 0,
        child: Container(
          decoration:const BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
            topRight: Radius.circular(90),
            bottomRight: Radius.circular(90),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        CircleAvatar(backgroundImage: AssetImage(img),radius: 40,),
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(name,style:const TextStyle(color: Colors.white,fontSize: 25),),
          Text(prix.toString(),style:const TextStyle(color: Colors.white,fontSize: 25)),
          
        ],),
       Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
        const  Icon(Icons.remove),
         const Text('1'),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              color:const Color.fromARGB(255, 207, 171, 157)
            ),
            child:const Icon(Icons.add)),
        ],),
      ],)
    ],),
  );
}