import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
@override
  State<Homepage> createState()=> _HomepageState();
}

class _HomepageState extends State<Homepage>{
@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("Employee ",style: TextStyle(fontSize: 25,color: Colors.blue),),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
    ),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 187, 225, 255)),
        child: Column(
          children: [
            Text("data"),
          ],
        ),
      );
    }),
    floatingActionButton: FloatingActionButton(backgroundColor: Colors.blue,
      onPressed: (){
      showModalBottomSheet(context: context, builder: (BuildContext context){
        return Container(
          height: 300,
          width: 420,
          color: Colors.cyan,
        );
      });
    },
    child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white),),
    ),
  );
}
}