// ignore_for_file: constant_identifier_names

part of './app_pages.dart';

//앱 내 라우트를 정의하는 공간. "/ + 이름"으로 작명해주세요
abstract class Routes {
  Routes._();
  static const INITIAL = _Paths.MAIN;
  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  static const MAIN = "/main";
  static const HOME = "/home";
}
