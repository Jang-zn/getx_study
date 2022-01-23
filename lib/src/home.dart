import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/page/normal/first.dart';
import 'package:getx_study/src/page/simple_state_management.dart';


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
                child: Text("Named 라우트")),
            //Arguments는 싹다 보낼 수 있음. Object까지
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/next", arguments: "Argument1234");
                },
                child: Text("Arguments")),
            //동적 url도 처리해줌 (쿼리스트링같은거)
            ElevatedButton(
                onPressed: (){
                  Get.toNamed("/user/zn2309?name=jang&age=30");
                },
                child: Text("동적 url")),
            ElevatedButton(
                onPressed: (){
                  Get.to(SimplePage());
                },
                child: Text("단순 상태관리"))
          ],
        )
      )
    );
  }
}
