import 'package:flutter/material.dart';


class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String description;
  final String imageUrl;

  ProductItem(
    this.id,
    this.title,
    this.description,
    this.imageUrl
  );
  
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(title: Text(title, textAlign: TextAlign.center,),),
    );
  }
}