import 'package:flutter/material.dart';
import 'package:mad/home_screen.dart';

void main(){


  // Control 
  final text = Text("Hi, MAD", style: TextStyle(fontSize: 20),);

  // Layout / Block
  final layout = Center(
    child: text,
  );

  // Level Screen
  final screen = Scaffold(
    body: layout,
  );

  // Level Root
  final app = MaterialApp(
    home: HomeScreen(),
    theme: ThemeData( colorScheme: .fromSeed(seedColor:  Colors.green),),
    debugShowCheckedModeBanner: false,
  );

  runApp(app);

}