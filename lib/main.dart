import 'package:flutter/material.dart';
import 'package:food_delivery/view/food/popular_food_detail.dart';
import 'package:food_delivery/view/home/main_home_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularFoodDetail(),
      // home: MainHomeView(),
    );
  }
}
