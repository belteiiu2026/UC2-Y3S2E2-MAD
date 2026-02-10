
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
        title: Text("Hi, Sreynich"),
        elevation: 0.5,
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      body: ListView(
        children: [
          _categoryTitleWidget,
          _categoryItemsWidget,
          SizedBox(height: 10,),
          _recomTitleWidget,
          _recomItemsWidget,
          SizedBox(height: 10,),
          _serviceTitleWidget,
          _serviceItemsWidget,
          SizedBox(height: 10,),
          _productTitleWidget,
          _productItemsWidget
        ],
      )
    );
  }

  Widget get _categoryTitleWidget {
    return Padding(padding: EdgeInsets.only(left: 16, right: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Categories", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
        Text("See All", style: TextStyle(fontSize: 18, color: Colors.pinkAccent),)
      ],
    ),);
  }

  Widget get _categoryItemsWidget {

    List<Widget> categoriesItem = List.generate(10, (i){
      return Card(
        child: SizedBox(
          height: 80,
          width: 60,
          child: Center(
            child: Column(
              children: [
                Icon(Icons.favorite, color: Colors.pinkAccent,),
                Text("Item $i")
              ],
            ),
          ),
        ),
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categoriesItem,
      ),
    );
  }

  Widget get _recomTitleWidget {
    return Padding(padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Recommend", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
          Text("See All", style: TextStyle(fontSize: 18, color: Colors.pinkAccent),)
        ],
      ),);
  }

  Widget get _recomItemsWidget {

    List<Widget> categoriesItem = List.generate(10, (i){
      return Card(
        child: Padding(
            padding: EdgeInsets.only(right: 4), child: SizedBox(
          width: 200,
          child: Image.asset("assets/images/uc1.jpg",),
        )),
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categoriesItem,
      ),
    );
  }

  Widget get _serviceTitleWidget {
    return Padding(padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Services", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
          Text("See All", style: TextStyle(fontSize: 18, color: Colors.pinkAccent),)
        ],
      ),);
  }

  Widget get _serviceItemsWidget {

    List<Widget> categoriesItem = List.generate(10, (i){
      return Card(
        child: SizedBox(
          height: 80,
          width: 60,
          child: Column(
            children: [
              Icon(Icons.home, color: Colors.red,),
              Text("Item $i")
            ],
          ),
        )
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categoriesItem,
      ),
    );
  }



  Widget get _productTitleWidget {
    return Padding(padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Products", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
          Text("See All", style: TextStyle(fontSize: 18, color: Colors.pinkAccent),)
        ],
      ),);
  }

  Widget get _productItemsWidget {

    List<Widget> categoriesItem = List.generate(10, (i){
      return Card(
        child: Padding(
            padding: EdgeInsets.only(right: 4), child: SizedBox(
          width: 200,
          child: Image.asset("assets/images/uc3.jpg",),
        )),
      );
    }).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categoriesItem,
      ),
    );
  }

}