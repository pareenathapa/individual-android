import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: Get.width,
      child: Stack(children: [
        Positioned(
          bottom: 0,
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              height: 100,
              width: Get.width - 32,
              decoration: BoxDecoration(
                  color: const Color(0xffffb30e),
                  borderRadius: BorderRadius.circular(8)),
              padding: const EdgeInsets.only(top: 14, left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your profile seems\nincomplete",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 92,
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: const Color(0xfffc4704)),
                    child: const Center(
                      child: Text(
                        "Update Profile",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )),
        ),
        Positioned(
            right: 28,
            bottom: 0,
            child: SizedBox(
                width: 110,
                height: 110,
                child: Image.asset("assets/images/updateProfile.png")))
      ]),
    );
  }
}
