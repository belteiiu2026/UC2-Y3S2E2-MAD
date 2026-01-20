
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> products = List.generate(20, (i) => "Products $i").toList();

  @override
  Widget build(BuildContext context) {

    List<Widget> productItems = products.map((m) {
      return ListTile(
        leading: Icon(Icons.account_balance),
        title: Text("$m"),
        subtitle: Text("1 USD"),
        trailing: Icon(Icons.navigate_next),
      );
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("VisitMe"),
        elevation: 0.5,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: 
      // ListView
      ListView(
        scrollDirection: Axis.vertical,
        children: productItems,
      ),
      // GridView.count(
      //   crossAxisCount: 3,
      //   children: productItems,
      // ),
    );
  }
}