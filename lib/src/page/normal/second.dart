import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("SecondPage")
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(onPressed: (){Get.back();}, child: Text("뒤로")),
            ElevatedButton(onPressed: (){Get.offAll(HomePage());}, child: Text("홈으로"))
          ]
        )
      )
    );
  }
}
