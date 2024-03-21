import 'package:flutter/material.dart';

import 'data.dart';
import 'home.dart';

class ShoppingCart extends StatelessWidget {
  const ShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        title: Text('shopping cart',style: TextStyle(color: Colors.white),),
        centerTitle:true,
        actions: [Padding(
          padding: const EdgeInsets.only(right:20.0),
          child: CircleAvatar(backgroundColor: Colors.amber,radius: 20,),
        )],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: juices.length,
          itemBuilder: (itemBuilder,index){
          return Container(
      
    margin:const EdgeInsets.only(bottom: 20,right: 15,left: 15),
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
        CircleAvatar(backgroundImage: AssetImage(juices[index].img!),radius: 40,),
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text(juices[index].name!,style:const TextStyle(color: Colors.white,fontSize: 25),),
          Text(juices[index].prix.toString(),style:const TextStyle(color: Colors.white,fontSize: 25)),
          
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
        }),
      ),
    );
  }
}