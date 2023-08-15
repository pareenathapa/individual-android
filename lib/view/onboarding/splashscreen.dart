import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  loadData() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    Get.offNamed('/onBoard');
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SizedBox(
            width: Get.width * 0.75,
            child: Image.asset("assets/logos/splashscreen.png")),
      )),
    );
  }
}
