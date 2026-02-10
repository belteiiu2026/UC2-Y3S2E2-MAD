
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mad/screen/home_screen.dart';
import 'package:mad/screen/language_screen.dart';
import 'package:mad/screen/main_screen.dart';
import 'package:mad/screen/product_detail_screen.dart';
import 'package:mad/screen/product_screen.dart';
import 'package:mad/screen/splash_screen.dart';

class RouteManager {

  static const String splashScreen = "/";
  static const String mainScreen = "/mainScreen";
  static const String productScreen = "/productScreen";
  static const String productDetailScreen = "/productDetailScreen";
  static const String languageScreen = "/languageScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings){

    switch(settings.name){
      case splashScreen:
        return _buildRoute(settings,SplashScreen());
      case mainScreen:
        return _buildRoute(settings, MainScreen());
      case productScreen:
        return _buildRoute(settings, ProductScreen());
      case productDetailScreen:
        return _buildRoute(settings, ProductDetailScreen());
      case languageScreen:
        return _buildRoute(settings, LanguageScreen());
      default:
        throw("Route not found");
    }
  }

  static Route<dynamic> _buildRoute(RouteSettings settings, Widget route){
      return MaterialPageRoute(settings: settings, builder: (BuildContext context) => route);
  }

}