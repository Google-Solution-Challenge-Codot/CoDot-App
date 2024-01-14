import 'package:codot/app/bindings/local_source_binding.dart';
import 'package:get/get.dart';

//앱 시작시 필요한 의존성
class InitialBinding implements Bindings {
  @override
  void dependencies() {
    LocalSourceBindings().dependencies();
  }
}
