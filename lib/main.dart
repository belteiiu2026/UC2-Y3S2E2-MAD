import 'package:flutter/material.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/product_detail_screen.dart';
import 'package:mad/screen/product_screen.dart';
import 'package:mad/screen/splash_screen.dart';
import 'package:mad/util/route_manager.dart';

void main(){

  final app = MaterialApp(
    onGenerateRoute: RouteManager.generateRoute,
    initialRoute: RouteManager.splashScreen,
    navigatorKey: RouteManager.key,
    theme: ThemeData( colorScheme: .fromSeed(seedColor:  Colors.green),),
    debugShowCheckedModeBanner: false,
  );
  runApp(app);
}