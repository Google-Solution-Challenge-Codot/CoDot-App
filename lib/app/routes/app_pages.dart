// ignore_for_file: constant_identifier_names

import 'package:codot/app/bindings/home_page_binding.dart';
import 'package:codot/app/bindings/main_page_binding.dart';
import 'package:codot/app/view/home_page.dart/home_page.dart';
import 'package:codot/app/view/main_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

// 앱 내 페이지를 정의하는 공간, 페이지 만든 후 여기에 정의해주세요
class AppPages {
  AppPages._();

  static const INITIAL = Routes.INITIAL;
  static const HOME = Routes.HOME;

  static final pages = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainPage(),
      binding: MainPageBinding(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomePageBinding(),
      transition: Transition.fadeIn,
    ),
  ];
}
