import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/controller/dependency_controller.dart';
import 'package:getx_study/src/dependencies/getput.dart';

class DependencyPage extends StatelessWidget {
  const DependencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Dependency injection"),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(
              child:Text("Get.put()"),
              onPressed: (){
                Get.to(GetPutPage(), binding:BindingsBuilder((){
                  Get.put(DependencyController());
                }));
              },
            ),
            //lazyput : 바인딩된 controller 사용 전까진 인스턴스 생성 안함
            ElevatedButton(
              child:Text("Get.lazyPut()"),
              onPressed: (){
                Get.to(GetPutPage(), binding:BindingsBuilder((){
                  Get.lazyPut(()=>DependencyController());
                }));
              },
            ),
            ElevatedButton(
              child:Text("Get.putAsync()"),
              onPressed: (){
                Get.to(GetPutPage(), binding:BindingsBuilder((){
                  Get.putAsync(() async {
                    Future.delayed(Duration(seconds:3));
                    return DependencyController();
                  });
                }));
              },
            ),
        //Controller 객체를 새로 생성함 (Singletone 말고 새로 생성)... 근데 잘 안쓸듯?
        ElevatedButton(
            child:Text("Get.create()"),
            onPressed: (){
              Get.to(GetPutPage(), binding:BindingsBuilder((){
                Get.create(() {
                  return DependencyController();
                });
              }));
            },)
          ]
        )
      )

    );
  }
}
