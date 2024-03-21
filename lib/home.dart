import 'package:flutter/material.dart';
import 'package:fruit_juice_app_ui/data.dart';

import 'item.dart';
Color white = Colors.white;
Color color =const Color.fromARGB(137, 48, 47, 47);
SizedBox box =const SizedBox(height: 15);
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
        title: Text('Juice',style: TextStyle(color: white)),
        actions:const [Padding(
          padding:  EdgeInsets.only(right:14.0),
          child: CircleAvatar(backgroundColor: Colors.white,radius: 25,),
        )],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          padding:const EdgeInsets.only(left: 10),
          children: [
            SizedBox(
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: fruitlist.length,itemBuilder: (builder,index){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(fruitlist[index].img!),radius: 35,),
                      Text(fruitlist[index].name!,style: TextStyle(color: white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                );
              },),
            ),
            box,
            Text('Most Popular',style: TextStyle(color: white, fontSize: 30,fontWeight: FontWeight.bold),),
            box,
            SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: juices.length,
                itemBuilder: (itemBuilder,index){
                  Juice juise = juices[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Item(juise:juise,)));
                  },
                  child: Container(
                  margin:const EdgeInsets.all(8),
                  height: 250,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: juices[index].backcolor!),
                    child: Column(children: [
                      Image(image: AssetImage(juices[index].img!),height: 150,),
                      Container(
                        padding:const EdgeInsets.all(8),
                        margin:const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: juices[index].color!,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Column(children: [
                            Text(juices[index].name!),
                            Text(juices[index].prix!.toString()),
                          ],),
                         const Icon(Icons.shopping_cart)
                        ],),
                      ),
                      ],),
                                ),
                );}),),
            box,
            Text('summer special',style: TextStyle(color: white, fontSize: 30,fontWeight: FontWeight.bold),),
            box,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: offers.length,itemBuilder: (itemBuilder,index){
                return Container(
                  padding:const EdgeInsets.all(10),
                  margin:const EdgeInsets.all(10),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(offers[index].img!),fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(offers[index].name!,style: TextStyle(color:offers[index].colors,
                      fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                );
              }),
            )
          ],),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.orange,
        backgroundColor: color,
        items:const [
        BottomNavigationBarItem(label:'',icon: Icon(Icons.home)),
        BottomNavigationBarItem(label:'',icon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(label:'',icon: Icon(Icons.account_box_rounded))
      ],)
    );
  }
}