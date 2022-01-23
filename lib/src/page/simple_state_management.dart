import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/count_controller.dart';

class SimplePage extends StatelessWidget {
  const SimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CountController cc = Get.put(CountController());
    return Scaffold(
      appBar: AppBar(
        title:Text("단순상태관리"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            GetBuilder(
                builder:
                (CountController cc){
                  return Text("${cc.count}");
            }),
            ElevatedButton(
                onPressed: (){
                  cc.increase();
                },
                child: Text("+", style:TextStyle(fontSize: 30))),
          ]
        )
      )
    );

  }
}
