import 'package:flutter/material.dart';
import 'package:mad/home_screen.dart';
import 'package:mad/product_screen.dart';

void main(){

  final app = MaterialApp(
    home: ProductScreen(),
    theme: ThemeData( colorScheme: .fromSeed(seedColor:  Colors.green),),
    debugShowCheckedModeBanner: false,
  );

  runApp(app);

}