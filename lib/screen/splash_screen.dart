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
          // Option 1
          //final route = MaterialPageRoute(builder: (BuildContext context) => ProductScreen());
          //Navigator.push(context, route);

          // Option 2
          // Navigator.pushNamed(context, RouteManager.productScreen);


          // Final RouteManager
          RouteManager.key.currentState?.pushReplacementNamed(RouteManager.productScreen);

        }, child: Text("Get Started")),
      ),
    );
  }
}
