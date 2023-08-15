import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeroDialog extends StatelessWidget {
  const MeroDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 210,
        child: Column(
          children: [
            SizedBox(
              width: 104,
              height: 104,
              child: Image.asset("assets/images/done.png"),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Order Confirmed",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xff16191D)),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Order ID: #1232",
              style: TextStyle(color: Color(0xff5E656E)),
            ),
            const SizedBox(
              height: 4,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed("/track");
              },
              child: const Text(
                "Track Order",
                style: TextStyle(color: Color(0xffFC4704)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
