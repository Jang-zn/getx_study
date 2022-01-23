import 'package:get/get.dart';

class CountControllerReactive extends GetxController{
  RxInt count = 0.obs;

  void increase(){
    count++;
  }

  void reset(){
    count(0);
  }


  //reactive lifeCycle 이용한 worker 기능
  @override
  void onInit() {
    ever(count,(_)=>{print("매번")});
    once(count,(_)=>{print("한번만")});
    debounce(count,(_)=>{print("마지막에만 호출")},time:Duration(seconds:1));
    interval(count,(_)=>{print("변경중 특정 시간마다 호출")},time:Duration(seconds:1));

    super.onInit();
  }

  @override
  void onClose() {

  }

//lifeCycle

}