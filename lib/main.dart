import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //padding to sperate between lines
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text("Train the Way You Want", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),textAlign: TextAlign.center,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text("Energise your routine with our growing library of workouts led by our world",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8 ),
            child: Text("class Nike Master Trainers. With NTC, you get access to over 190 free",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8 ),
            child: Text("workouts across strength, endurance, yoga and mobility targeting your abs,",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8 ),
            child: Text("arms, shoulders, glutes and legs. Sessions range from 15–45 minutes and are designed to help you see and feel results.",style: TextStyle(fontSize: 18),textAlign: TextAlign.left,),
          ),


          //for make box under
          Container(
            
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2 ,color: Colors.white),
            //to make shadow outside of box
          boxShadow: [ BoxShadow(

            color: Colors.black.withOpacity(0.5),
              spreadRadius:3 ,
            blurRadius: 3
          )],
            ),
          width: 400,
          height: 100,
          child:
          Column(
            children: [
              //to make text left
              Align(
                //to sperate the lines
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("PRICE", style: TextStyle(fontSize: 25),textAlign: TextAlign.left,),
                ),
                alignment: Alignment.bottomLeft,
              ),

           Align(
             child:Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text("2000 \$" , style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
             ),
             alignment: Alignment.bottomLeft,
           )
            ],
          ),
          ),
        ],

      )  ,
      appBar: PreferredSize(
        //to make size of app bar bigger
        preferredSize: Size.fromHeight(200),
        child: AppBar(
            actions: [
             Padding(
               padding: const EdgeInsets.only(right: 10 , top: 10),
               child: Icon(Icons.stars,size: 50,),
             )
             ],

             leading:
             Padding(
               padding: const EdgeInsets.only(left: 10 , top: 10) ,
               child: Icon(Icons.arrow_back_ios,size: 50) ,
             ),
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  //image in at the top in the bar
                  image: DecorationImage(image: NetworkImage("https://static01.nyt.com/images/2021/03/30/multimedia/28xp-shoes-09/28xp-shoes-09-jumbo.jpg?quality=75&auto=webp"),
                  //to make image full of app bar
                      fit: BoxFit.fill
                  ),)
              ),
        ) ,

      ),
    );
  }
}
