import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_study/src/page/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("FirstNamedPage")
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            ElevatedButton(onPressed: (){Get.toNamed("/second");}, child: Text("다음페이지")),
            ElevatedButton(onPressed: (){Get.offNamed("/second");}, child: Text("현재페이지 없이 다음페이지"))
          ]
        )
      )
    );
  }
}
