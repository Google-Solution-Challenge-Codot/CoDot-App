import 'package:codot/app/controller/home_page_controller.dart';
import 'package:codot/app/core/base/base_view.dart';
import 'package:codot/global_setting/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends BaseView<HomePageController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  @override
  Widget body(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 550.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          BottomInfo(),
        ],
      ),
    );
  }
}

class BottomInfo extends StatelessWidget {
  const BottomInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 290.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
      ),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, top: 20.h),
          child: UserInfo(),
        ),
        SizedBox(height: 20.h),
        UserSelfIntroduce(),
      ]),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 40.w),
        SizedBox(width: 10.w),
        UserInfoTexts(),
      ],
    );
  }
}

class UserInfoTexts extends StatelessWidget {
  const UserInfoTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'userName',
          style: TextStyle(fontSize: 20.sp),
        ),
        Text('userUniversity'),
        Text('userMajor'),
      ],
    );
  }
}

class UserSelfIntroduce extends StatelessWidget {
  const UserSelfIntroduce({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 160.h,
      decoration: BoxDecoration(
        color: AppColors.pageBackground,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: REdgeInsets.all(8.w),
        child: Text('userIntroduce'),
      ),
    );
  }
}
