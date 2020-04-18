import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/scope_model/food_model.dart';
import 'package:flutter_food_delivery_app/screens/main_screen.dart';
import 'package:scoped_model/scoped_model.dart';

import 'homescreen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{

  final FoodModel _foodModel=FoodModel();



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel<FoodModel>(
      model: FoodModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food Delivery App',
        theme: ThemeData(
          primaryColor: Colors.blueAccent
        ),
        home: MainScreen(foodModel:_foodModel),
      ),
    );

    /*return ScopedModel<FoodModel>(
        model: _foodModel,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Delivery App',
          theme: ThemeData(
              primaryColor: Colors.blueAccent
          ),
          home: MainScreen(),
        )
    );*/
  }

}