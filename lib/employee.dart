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
      title: Text("Employee ",style: TextStyle(fontSize: 25,color: Colors.cyan),),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
    ),
    body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10), itemBuilder: (context,index){
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: const Color.fromARGB(255, 166, 255, 255)),
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
          padding: EdgeInsets.all(8),
          height: 300,
          width: 420,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 166, 255, 255)),
          child: Column(
            children: [
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),labelText: "Employee name"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),labelText: "age"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),labelText: "salary"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),labelText: "position"),),
              TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),labelText: "company name"),),
            ],
          ),
        );
      });
    },
    child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white),),
    ),
  );
}
}
