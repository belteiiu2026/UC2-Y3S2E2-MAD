import 'package:flutter/material.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/product_detail_screen.dart';
import 'package:mad/screen/product_screen.dart';
import 'package:mad/screen/splash_screen.dart';
import 'package:mad/util/route_manager.dart';

void main(){

  final app = MaterialApp(
    // Option 1
    // home: SplashScreen(),

    // Option 2
    onGenerateRoute: RouteManager.generateRoute,
    initialRoute: RouteManager.splashScreen,
    navigatorKey: RouteManager.key,

    // Option 3
    // routes: {
    //   '/' : (BuildContext context) => SplashScreen(),
    //   '/homeScreen' : (BuildContext context) => HomeScreen(),
    //   '/productScreen' : (BuildContext context) => ProductScreen(),
    //   '/productDetailScreen' : (BuildContext context) => ProductDetailScreen(),
    // },

    theme: ThemeData( colorScheme: .fromSeed(seedColor:  Colors.green),),
    debugShowCheckedModeBanner: false,


  );

  runApp(app);

}