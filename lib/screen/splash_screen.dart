import 'package:flutter/material.dart';
import 'package:mad/screen/product_screen.dart';
import 'package:mad/util/route_manager.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          RouteManager.key.currentState?.pushReplacementNamed(RouteManager.mainScreen);
        }, child: Text("Get Started")),
      ),
    );
  }
}
