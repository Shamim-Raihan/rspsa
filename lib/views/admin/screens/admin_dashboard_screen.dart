import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rspsa/custom_widgets/dashboard_card.dart';
import 'package:rspsa/utils/color_helper.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   // automaticallyImplyLeading: false,
      //   title: Text(
      //     'Dashboard',
      //     style: TextStyle(fontSize: 16.sp),
      //   ),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      body: Stack(
        children: [
          Container(
            color: ColorHelper.primeryColor,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
              top: 45.h,
              left: 20.w,
              right: 20.w,
              child: Center(
                child: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
              )),
          Positioned(
            top: 90.h,
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
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DashboardCard(
                            icon: Icons.people,
                            iconColor: Colors.blue,
                            title: '420',
                            subtitle: 'Total Student'),
                        DashboardCard(
                            icon: Icons.school,
                            iconColor: Colors.blue,
                            title: '3',
                            subtitle: 'Total School')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DashboardCard(
                            icon: Icons.people_alt_sharp,
                            iconColor: Colors.blue,
                            title: '100',
                            subtitle: 'Total Employee'),
                        DashboardCard(
                            icon: Icons.people_outlined,
                            iconColor: Colors.blue,
                            title: '150',
                            subtitle: 'Total Teacher')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DashboardCard(
                            icon: Icons.people_alt_sharp,
                            iconColor: Colors.red,
                            title: '200',
                            subtitle: 'Inactive Student'),
                        DashboardCard(
                            icon: Icons.people_outlined,
                            iconColor: Colors.red,
                            title: '5',
                            subtitle: 'Inactive Teacher')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DashboardCard(
                            icon: Icons.people_alt_sharp,
                            iconColor: Colors.red,
                            title: '100',
                            subtitle: 'Inactive Employee'),
                        DashboardCard(
                            icon: Icons.school,
                            iconColor: Colors.red,
                            title: '150',
                            subtitle: 'Inactive School')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DashboardCard(
                            icon: Icons.people,
                            iconColor: Colors.green,
                            title: '100',
                            subtitle: 'Active Student'),
                        DashboardCard(
                            icon: Icons.people_outlined,
                            iconColor: Colors.green,
                            title: '100',
                            subtitle: 'Active Teacher')
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DashboardCard(
                            icon: Icons.people_alt_sharp,
                            title: '1',
                            iconColor: Colors.green,
                            subtitle: 'Active Employee'),
                        DashboardCard(
                          icon: Icons.school,
                          title: '2',
                          subtitle: 'active School',
                          iconColor: Colors.green,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
