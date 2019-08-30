import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/products_provider.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  
  static const String routeName = 'product-detail';

  //final String title;

  //ProductDetailScreen(this.title);

  @override
  Widget build(BuildContext context) {
    
    final productId = ModalRoute.of(context).settings.arguments as String;
    final product = Provider.of<ProductsProvider>(context)
            .findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text(product.title),),
    );
  }
}