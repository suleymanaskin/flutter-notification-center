import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

String saat = DateTime.now().toString().substring(11,16);
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        saat = DateTime.now().toString().substring(11, 16);
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle:true,
        title: Text("Bildirim Merkezi",style:
        TextStyle(
            color: Colors.white,fontSize: 30,
            fontWeight:FontWeight.bold,),),
        
      ),
      body: Center(

        child: Column(
          children: [
            Container(
              width: 370,
              height: 60,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hoş Geldin Süleyman :)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(Icons.waving_hand),

                ],
              ),

            ),
            Container(
              width: 350,
              height: 60,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(

                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.access_time),
                  Text(saat,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                ],

              ),


            ),
            Container(
              width: 350,
              height: 100,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(image: DecorationImage(image:NetworkImage("https://cdn2.enuygun.com/media/lib/1200x675/uploads/image/serengeti-tanzanya-66362.webp"),
              fit: BoxFit.cover),
            ),
            ),
            Container(
              width: 350,
              height: 60,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(

                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("18.11.2026 Çarşamba",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ],
              ),

            ),
            Container(
              width: 370,
              height: 60,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Bildirim Merkezi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(width: 70,),
                  Icon(Icons.close_rounded),
                ],
              ),

            ),
            Container(
              width: 350,
              height: 100,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage:NetworkImage("https://st4.depositphotos.com/3538103/40645/v/450/depositphotos_406455892-stock-illustration-user-icon-vector-people-icon.jpg"),
                    
                  ),
                  SizedBox(width: 15,),
                  Text("Süleyman Aşkın",textAlign: TextAlign.center,style: TextStyle(color: Colors.purple,fontSize:20),),
                  SizedBox(width: 30,),
                  Text(saat,style: TextStyle(fontWeight: FontWeight.bold,)),
                  SizedBox(width: 20,),
                  Icon(Icons.delete_outline),
                ],
              ),
              
            ),
            Container(
              width: 350,
              height: 100,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage:NetworkImage("https://st4.depositphotos.com/3538103/40645/v/450/depositphotos_406455892-stock-illustration-user-icon-vector-people-icon.jpg"),

                  ),
                  SizedBox(width: 15,),
                  Text("Süleyman Aşkın",textAlign: TextAlign.center,style: TextStyle(color: Colors.purple,fontSize:20),),
                  SizedBox(width: 30,),
                  Text(saat,style: TextStyle(fontWeight: FontWeight.bold,)),
                  SizedBox(width: 20,),
                  Icon(Icons.delete_outline),
                ],
              ),

            ),
            Container(
              width: 350,
              height: 100,
              padding:EdgeInsets.all(15),
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius:BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage:NetworkImage("https://st4.depositphotos.com/3538103/40645/v/450/depositphotos_406455892-stock-illustration-user-icon-vector-people-icon.jpg"),

                  ),
                  SizedBox(width: 15,),
                  Text("Süleyman Aşkın",textAlign: TextAlign.center,style: TextStyle(color: Colors.purple,fontSize:20),),
                  SizedBox(width: 30,),
                  Text(saat,style: TextStyle(fontWeight: FontWeight.bold,)),
                  SizedBox(width: 20,),
                  Icon(Icons.delete_outline),
                ],
              ),

            ),

          ],
        ),

      ),

    );
  }
}
