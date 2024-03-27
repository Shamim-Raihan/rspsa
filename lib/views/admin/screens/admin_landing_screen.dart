import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rspsa/custom_widgets/appbar.dart';
import 'package:rspsa/custom_widgets/card.dart';
import 'package:rspsa/custom_widgets/my_drawer.dart';
import 'package:rspsa/utils/color_helper.dart';
import 'package:rspsa/views/admin/controller/admin_dashboard_controller.dart';
import 'package:rspsa/views/admin/screens/admin_dashboard_screen.dart';
import 'package:rspsa/views/admin/screens/edit_profile_screen.dart';
import 'package:rspsa/views/admin/screens/programs.dart';

class AdminLandingScreen extends StatelessWidget {
  AdminLandingScreen({super.key});

  final AdminDashboardController adminDashboardController =
      Get.put(AdminDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorHelper.primeryColor,
      // drawer: SafeArea(
      //   child: MyDrawer(),
      // ),
      appBar: appBar(),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: ColorHelper.primeryColor,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
              top: 20.h,
              left: 20.w,
              right: 20.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Admin's Name",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Emial: admin@gmail.com",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Mobile: 7888889999999",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60.w,
                        height: 60.h,
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(
                            side: BorderSide(
                              width: 3,
                              strokeAlign: BorderSide.strokeAlignCenter,
                              color: Color(0xFFE7E9EB),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(ProfileEdit());
                          },
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                          ))
                    ],
                  ),
                ],
              )),
          Positioned(
            top: 120.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r))),
              padding: EdgeInsets.only(top: 10.h),
              // width: 100,
              // height: 100,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(AdminDashboardScreen());
                          },
                          child: CommonCard(
                            icon: Icons.home,
                            title: 'Dashboard',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(ProgramsScreen());
                          },
                          child: CommonCard(
                            icon: Icons.menu,
                            title: 'Programs',
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommonCard(
                          icon: Icons.people,
                          title: 'Students',
                        ),
                        CommonCard(
                          icon: Icons.people_outline,
                          title: 'Teachers',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommonCard(
                          icon: Icons.edit_outlined,
                          title: 'Schools',
                        ),
                        CommonCard(
                          icon: Icons.people,
                          title: 'Employees',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommonCard(
                          icon: Icons.graphic_eq_outlined,
                          title: 'Program Reports',
                        ),
                        CommonCard(
                          icon: Icons.money_sharp,
                          title: 'Transactions',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CommonCard(
                          icon: Icons.notifications_active_outlined,
                          title: 'Notifications',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
