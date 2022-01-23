import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/home.dart';
import 'package:getx_study/src/page/named/first_named.dart';
import 'package:getx_study/src/page/named/second_named.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:"Flutter Demo",
      theme:ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home : HomePage(),
      getPages: [
        GetPage(name:"/",page:()=>HomePage(),transition: Transition.zoom),
        GetPage(name:"/first",page:()=>FirstNamedPage(),transition: Transition.zoom),
        GetPage(name:"/second",page:()=>SecondNamedPage(),transition: Transition.zoom),
      ],
    );
  }
}
