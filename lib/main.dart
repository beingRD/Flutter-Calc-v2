import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){

  return MaterialApp(
    title: "Standard Calc",
    theme: ThemeData(primarySwatch: Colors.amber),
    home: Scaffold(
      appBar: AppBar(
        title: Text("Calc Boyzz"),
      ),
      body: Center(
        child: Text("Yo Niggas!"),
      )
    )

    
  
  );

   

  }
}