import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/widgets/mero_checkbox.dart';

class CheckOutVendorChild extends StatefulWidget {
  const CheckOutVendorChild({
    super.key,
  });

  @override
  State<CheckOutVendorChild> createState() => _CheckOutVendorChildState();
}

class _CheckOutVendorChildState extends State<CheckOutVendorChild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Color(0xffE5E5E6)))),
      child: Row(
        children: [
          SizedBox(
              width: 60,
              height: 60,
              child: Image.asset("assets/temp/images/burger.png")),
          const SizedBox(
            width: 4,
          ),
          SizedBox(
            width: Get.width * 0.38,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Bold-Bingo Burger",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Text(
                  "100% Freshly Minced Lamb Patty, Blue, Cheese, Caramelized Onions, A-sauce, Natural Cheese Blend & Lettuce",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 10),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    const Text(
                      "Rs. 320 ",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "x1",
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          const Text(
            "Rs. 320",
            style: TextStyle(
                color: Color(0xffFC4704), fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
