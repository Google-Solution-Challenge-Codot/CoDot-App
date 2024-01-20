// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:codot/app/controller/main_page_controller.dart';
import 'package:codot/app/core/base/base_view.dart';
import 'package:codot/app/view/common/codot_app_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends BaseView<MainPageController> {
  @override
  Widget pageScaffold(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: pageBackgroundColor(),
        key: globalKey,
        appBar: appBar(context),
        floatingActionButton: floatingActionButton(),
        body: pageContent(context),
        bottomNavigationBar: bottomNavigationBar(),
        bottomSheet: bottomSheet(),
        drawer: drawer(),
      ),
    );
  }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return CodotAppBar(
      tabController: controller.tabController,
      tabBarController: controller.tabBarController,
    );
  }

  @override
  Widget body(BuildContext context) {
    return TabBarView(
      controller: controller.tabController,
      children: [
        Container(),
        Container(),
        Container(),
        Container(),
      ],
    );
  }
}
