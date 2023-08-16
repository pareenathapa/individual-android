import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VendorImage extends StatefulWidget {
  const VendorImage({
    super.key,
  });

  @override
  State<VendorImage> createState() => _VendorImageState();
}

class _VendorImageState extends State<VendorImage> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      height: 210,
      child: Stack(children: [
        SizedBox(
            width: Get.width,
            height: 160,
            child: Image.asset(
              "assets/temp/images/vendor.png",
              fit: BoxFit.cover,
            )),
        Positioned(
          top: 38,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: Get.width - 32,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        liked = !liked;
                      });
                    },
                    child: SizedBox(
                        width: 14,
                        height: 14,
                        child: Image.asset(liked
                            ? "assets/icons/redHeart.png"
                            : "assets/icons/heart.png")),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  SizedBox(
                      width: 14,
                      height: 14,
                      child: Image.asset("assets/icons/share.png")),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 16,
          child: Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset(
                "assets/temp/images/vendor_logo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
