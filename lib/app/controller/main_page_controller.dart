import 'package:codot/app/controller/tab_bar_controller.dart';
import 'package:codot/app/core/base/base_controller.dart';
import 'package:codot/app/data/model/enum/menu_code.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends BaseController
    with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final TabBarController tabBarController = TabBarController();
  final _selectedMenuCodeController = MenuCode.HOME.obs;

  MenuCode get selectedMenuCode => _selectedMenuCodeController.value;

  onMenuSelected(MenuCode menuCode) async {
    _selectedMenuCodeController(menuCode);
  }

  @override
  onInit() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(
      () {
        tabBarController.updateSelectedIndex(tabController.index);
      },
    );
    super.onInit();
  }
}
