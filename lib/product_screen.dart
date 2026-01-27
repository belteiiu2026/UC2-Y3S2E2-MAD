
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _State();
  
}

class _State extends State<ProductScreen> {

   Future<List<String>> _loadProductList() async {
    await Future.delayed(Duration(seconds: 5));
    // throw("Internal Server Error");
    return List.generate(10 , (i) => "Product $i").toList();
   }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: FutureBuilder(
          future: _loadProductList(), 
          builder: (BuildContext context, AsyncSnapshot<List<String>> snapshot){

              // ConnectionState
              if(ConnectionState.done != snapshot.connectionState){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }

              // Has Error
              if(snapshot.hasError){
                return Center(
                  child: Text("Error ${snapshot.error}"),
                );
              }

              // No Data
              if(!snapshot.hasData){
                  return Center(
                    child: Text("No Data"),
                  );
              }

              List<String> productList = snapshot.data as List<String>;
              return ListView.builder(
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index){

                  String product = productList[index];

                    return ListTile(
                      leading: Icon(Icons.favorite),
                      title: Text("$product"),
                      subtitle: Text("1\$"),
                      trailing: Icon(Icons.add),
                    );
              });

          })
      );
  }

}