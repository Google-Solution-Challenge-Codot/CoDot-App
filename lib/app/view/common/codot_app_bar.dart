import 'package:codot/app/controller/tab_bar_controller.dart';
import 'package:codot/app/data/menu/menu_item.dart';
import 'package:codot/app/data/model/enum/menu_code.dart';
import 'package:codot/global_setting/app_colors.dart';
import 'package:codot/global_setting/app_fontweight.dart';
import 'package:codot/global_setting/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CodotAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CodotAppBar({
    super.key,
    required this.tabController,
    required this.tabBarController,
  });

  final TabController tabController;
  final TabBarController tabBarController;

  @override
  Widget build(BuildContext context) {
    List<TabBarItem> tabItemList = _getTabBarItems();

    return Obx(
      () => Container(
        height: 90.h + MediaQuery.of(context).padding.top,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(4.r),
            bottomRight: Radius.circular(4.r),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 20.h),
            Row(
              children: [
                SizedBox(width: 20.w),
                Text(
                  'CoDot',
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColors.black,
                    fontWeight: AppFontWeights.medium,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  child: const CircleAvatar(),
                  onTap: () {},
                ),
                SizedBox(width: 20.w),
              ],
            ),
            const Spacer(),
            TabBar(
              controller: tabController,
              tabs: tabItemList
                  .map(
                    (TabBarItem tabItem) => Tab(
                      child: Text(
                        tabItem.tabBarTitle,
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: tabItemList.indexOf(tabItem) ==
                                  tabBarController.selectedIndex
                              ? AppColors.black
                              : AppColors.black,
                          fontWeight: tabItemList.indexOf(tabItem) ==
                                  tabBarController.selectedIndex
                              ? AppFontWeights.bold
                              : AppFontWeights.medium,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onTap: (index) {
                tabBarController.updateSelectedIndex(index);
              },
              indicatorColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }

  List<TabBarItem> _getTabBarItems() {
    return [
      const TabBarItem(
        tabBarTitle: AppString.tabbar_home,
        menuCode: MenuCode.HOME,
      ),
      const TabBarItem(
        tabBarTitle: AppString.tabbar_reserve,
        menuCode: MenuCode.RESERVE,
      ),
      const TabBarItem(
        tabBarTitle: AppString.tabbar_qr,
        menuCode: MenuCode.QR,
      ),
      const TabBarItem(
        tabBarTitle: AppString.tabbar_scoreboard,
        menuCode: MenuCode.SCOREBOARD,
      ),
    ];
  }

  @override
  Size get preferredSize => Size.fromHeight(90.h);
}
