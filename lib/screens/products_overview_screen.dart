import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/providers/products_provider.dart';
import 'package:flutter_complete_guide/widgets/product_item.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ProductsGrid(),
    );
  }
}

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loadedProducts = Provider.of<ProductsProvider>(context).products;
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].description,
          loadedProducts[i].imageUrl,
          
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
      ) 
  }
}