import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:rspsa/views/common/login_screen.dart';

class LauncherScreen extends StatefulWidget {
  const LauncherScreen({super.key});

  @override
  State<LauncherScreen> createState() => _LauncherScreenState();
}

class _LauncherScreenState extends State<LauncherScreen> {
  @override
  void initState() {
    goto();
    super.initState();
  }

  goto() {
    Timer(const Duration(milliseconds: 500), () {
      Get.off(const LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
