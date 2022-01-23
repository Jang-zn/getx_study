import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/count_controller.dart';
import 'package:getx_study/src/controller/count_controller_reactive.dart';

class ReactivePage extends StatelessWidget {
  const ReactivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountControllerReactive cc = Get.put(CountControllerReactive());
    return Scaffold(
      appBar: AppBar(
        title:Text("단순상태관리"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Obx(()=> Text("${cc.count.value}")),
            ElevatedButton(
                onPressed: (){
                  cc.increase();
                },
                child: Text("+", style:TextStyle(fontSize: 30))),
            ElevatedButton(
                onPressed: (){
                  cc.reset();
                },
                child: Text("reset", style:TextStyle(fontSize: 30))),
          ]
        )
      )
    );

  }
}
