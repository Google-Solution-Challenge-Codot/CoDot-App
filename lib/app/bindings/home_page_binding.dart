import 'package:codot/app/controller/main_page_controller.dart';
import 'package:get/get.dart';

class HomePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainPageController>(() {
      return MainPageController();
    });
  }
}
