import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MeroBanner extends StatelessWidget {
  const MeroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 8,
              ),
              for (int i = 0; i < 3; i++) const BannerItem()
            ],
          )),
    );
  }
}

class BannerItem extends StatelessWidget {
  const BannerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 311,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff16191D)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Are you starving ?",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Upto",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(
                height: 4,
              ),
              const Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  "30%",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "off",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ]),
              const SizedBox(
                height: 4,
              ),
              Container(
                width: 88,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xfffc4704)),
                child: const Center(
                  child: Text(
                    "Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          const Spacer(),
          Image.asset("assets/temp/images/banner.png")
        ],
      ),
    );
  }
}
