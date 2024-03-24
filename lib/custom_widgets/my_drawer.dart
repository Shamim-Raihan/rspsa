import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rspsa/utils/color_helper.dart';
import 'package:rspsa/views/admin/controller/admin_dashboard_controller.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({super.key});

  final AdminDashboardController adminDashboardController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Image.asset(
                'images/logo.png',
                height: 70.h,
                width: 120.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 1;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: adminDashboardController.selectedScreen.value == 1
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Dashboard',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 1
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 2;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.menu,
                    color: adminDashboardController.selectedScreen.value == 2
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Programs',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 2
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 3;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people,
                    color: adminDashboardController.selectedScreen.value == 3
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Students',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 3
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 4;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people_outline,
                    color: adminDashboardController.selectedScreen.value == 4
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Teachers',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 4
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 5;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.edit_outlined,
                    color: adminDashboardController.selectedScreen.value == 5
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Schools',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 5
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 6;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.people,
                    color: adminDashboardController.selectedScreen.value == 6
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Employees',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 6
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 7;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.graphic_eq_outlined,
                    color: adminDashboardController.selectedScreen.value == 7
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Program Reports',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 7
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 8;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.money_sharp,
                    color: adminDashboardController.selectedScreen.value == 8
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Transactions',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 8
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 9;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.notifications_active_outlined,
                    color: adminDashboardController.selectedScreen.value == 9
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Notifications',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 9
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  adminDashboardController.selectedScreen.value = 10;
                  Get.back();
                },
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: adminDashboardController.selectedScreen.value == 10
                        ? ColorHelper.primeryColor
                        : Colors.black,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                        color:
                            adminDashboardController.selectedScreen.value == 10
                                ? ColorHelper.primeryColor
                                : Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
