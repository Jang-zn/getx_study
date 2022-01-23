import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/page/normal/first.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("라우트 관리"),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Get.to(FirstPage());
                },
                child: Text("일반 라우트")),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/first");
                },
                child: Text("Named 라우트"))
          ],

        )
      )
    );
  }
}
