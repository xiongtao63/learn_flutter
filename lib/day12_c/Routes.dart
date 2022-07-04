

import 'package:flutter/material.dart';
import 'package:learn_flutter/day12_c/Login.dart';
import 'package:learn_flutter/day12_c/Product.dart';
import 'package:learn_flutter/day12_c/ProductInfo.dart';
import 'package:learn_flutter/day12_c/RegisterFirst.dart';
import 'package:learn_flutter/day12_c/RegisterSecond.dart';
import 'package:learn_flutter/day12_c/RegisterThird.dart';
import 'package:learn_flutter/day13_c/Form.dart';
import 'package:learn_flutter/day13_c/Search.dart';
import 'package:learn_flutter/day15_c/AppBarDemo.dart';
import 'package:learn_flutter/day15_c/TabBarController.dart';

import '../day12_c/Tabs.dart';



final routes = {
  '/':(context) => Tabs(),
  '/form': (context) => FormPage(),
  '/product': (context) => ProductPage(),
  '/productInfo':(context,{arguments}) => ProductInfoPage(arguments: arguments,),
  '/search':(context,{arguments}) => SearchPage(arguments: arguments,),
  '/login':(context)=>LoginPage(),
  '/registerFirst':(context)=>RegisterFirstPage(),
  '/registerSecond':(context)=>RegisterSecondPage(),
  '/registerThird':(context)=>RegisterThirdPage(),
  '/appBarDemo':(context)=>AppBarDemoPage(),
  '/tabBarController':(context)=>TabBarControllerPage(),
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
  // 统一处理
  final String? name = settings.name;
  final Function pageContentBuilder = routes[name] as Function;
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context));
      return route;
    }
  }
};