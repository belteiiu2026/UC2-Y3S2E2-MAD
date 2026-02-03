import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {

  String? product;

  ProductDetailScreen({super.key, this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {

    // String product = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text("${widget.product}"),
      ),
      body: Center(
        child: Text("Product Detail"),
      ),
    );
  }
}
