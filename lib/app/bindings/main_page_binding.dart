import 'package:codot/app/bindings/home_page_binding.dart';
import 'package:codot/app/controller/main_page_controller.dart';
import 'package:get/get.dart';

class MainPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() {
      return MainPageController();
    });
    HomePageBinding().dependencies();
  }
}
