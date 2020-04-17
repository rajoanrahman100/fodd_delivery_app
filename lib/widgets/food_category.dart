import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/models/categories.dart';
import 'package:flutter_food_delivery_app/models/category_model.dart';
import 'package:flutter_food_delivery_app/widgets/food_cart.dart';

class FoodCategory extends StatelessWidget{

  final List<Category> _categories=categories;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (context,index){
          return FoodCart(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }

}