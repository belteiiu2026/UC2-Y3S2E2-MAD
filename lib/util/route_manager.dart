
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/product_detail_screen.dart';
import 'package:mad/screen/product_screen.dart';
import 'package:mad/screen/splash_screen.dart';

class RouteManager {

  static const String splashScreen = "/";
  static const String homeScreen = "/homeScreen";
  static const String productScreen = "/productScreen";
  static const String productDetailScreen = "/productDetailScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
      case splashScreen:
        return _buildRoute(settings,SplashScreen());
      case homeScreen:
        return _buildRoute(settings, HomeScreen());
      case productScreen:
        return _buildRoute(settings, ProductScreen());
      case productDetailScreen:
        return _buildRoute(settings, ProductDetailScreen());
      default:
        throw("Route not found");
    }
  }

  static Route<dynamic> _buildRoute(RouteSettings settings, Widget route){
      return MaterialPageRoute(settings: settings, builder: (BuildContext context) => route);
  }

}