import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutoAuth extends StatelessWidget {
  const AutoAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: Get.width * 0.5 - 28,
          height: 54,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffe5e5e6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 16,
                  height: 16,
                  child: Image.asset("assets/icons/google.png")),
              const SizedBox(
                width: 8,
              ),
              const Text("Google")
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          width: Get.width * 0.5 - 28,
          height: 54,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffe5e5e6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 16,
                  height: 16,
                  child: Image.asset("assets/icons/facebook.png")),
              const SizedBox(
                width: 8,
              ),
              const Text("Facebook")
            ],
          ),
        )
      ],
    );
  }
}
