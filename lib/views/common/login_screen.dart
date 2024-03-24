import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rspsa/utils/color_helper.dart';
import 'package:rspsa/views/admin/screens/admin_landing_screen.dart';
import 'package:rspsa/views/controller/controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100.h,
                ),
                SizedBox(
                    // color: Colors.amber,
                    height: 100.h,
                    width: 200.w,
                    child: Image.asset('images/logo.png')),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Hello! let's get started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  "Sign in to continue.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                buildInputAndActionView(loginController, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildInputAndActionView(
      LoginController loginController, BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50.h,
            child: TextField(
              controller: loginController.emailController,
              decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: ColorHelper.primeryColor, width: 1.2)),
                suffixIcon: const Icon(Icons.mail_outline,
                    color: ColorHelper.primeryColor),
                labelText: 'Email',
                labelStyle: const TextStyle(color: Colors.black),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.grey.shade300, width: 1.2)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.2)),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 50.h,
            child: TextFormField(
              controller: loginController.passwordController,
              obscureText: !loginController.visiblepass,
              decoration: InputDecoration(
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: ColorHelper.primeryColor, width: 1.2)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.grey.shade300, width: 1.2)),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.2)),
                  suffixIcon: loginController.visiblepass
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              loginController.visiblepass
                                  ? loginController.visiblepass = false
                                  : loginController.visiblepass = true;
                            });
                          },
                          icon: const Icon(Icons.visibility,
                              color: ColorHelper.primeryColor))
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              loginController.visiblepass
                                  ? loginController.visiblepass = false
                                  : loginController.visiblepass = true;
                            });
                          },
                          icon: const Icon(
                            Icons.visibility_off,
                            color: ColorHelper.primeryColor,
                          )),
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.black)),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40.h,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorHelper.primeryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                ),
              ),
              onPressed: () {
                Get.offAll(() => AdminLandingScreen());
              },
              child: Text(
                'SIGN IN',
                style: TextStyle(color: Colors.white, fontSize: 18.h),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: ColorHelper.primeryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationThickness: 1,
                    decorationStyle: TextDecorationStyle.solid,
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
