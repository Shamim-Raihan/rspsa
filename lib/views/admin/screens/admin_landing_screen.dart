import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rspsa/custom_widgets/my_drawer.dart';
import 'package:rspsa/views/admin/controller/admin_dashboard_controller.dart';

class AdminLandingScreen extends StatelessWidget {
  AdminLandingScreen({super.key});

  final AdminDashboardController adminDashboardController =
      Get.put(AdminDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: MyDrawer(),
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
