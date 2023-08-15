import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/order_item.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/vendor.dart';

class Basket extends StatelessWidget {
  final bool back;
  const Basket({super.key, this.back = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCF8F7),
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(children: [
          SizedBox(
            width: Get.width,
            height: Get.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        if (back)
                          GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: const Icon(Icons.arrow_back_rounded)),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "My Basket",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        SizedBox(
                            width: 12,
                            height: 12,
                            child: Image.asset("assets/icons/trash.png")),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "Delete",
                          style:
                              TextStyle(fontSize: 12, color: Color(0xfffc4704)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  for (int i = 0; i < 2; i++) const BasketVendor(),
                  Container(
                    width: Get.width - 32,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Order Summary",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const OrderItem(
                          title: "Subtotal",
                          amount: 320,
                        ),
                        const OrderItem(
                          title: "Shipping Fee",
                          amount: 0,
                        ),
                        const OrderItem(
                          title: "Promotion",
                          amount: 0,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: Get.width * 0.68,
                              height: 30,
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder()),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 60,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xffFFB30E)),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            Text(
                              "Rs. 320",
                              style: TextStyle(
                                  color: Color(0xffFC4704),
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 80,
              width: Get.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(23, 23, 23, 0.1),
                        blurRadius: 16,
                        spreadRadius: -8,
                        offset: Offset(0, -10))
                  ],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total: Rs. 640",
                        style: TextStyle(
                            color: Color(0xffFC4704),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "All taxes included",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      if (authController.token == null) {
                        Get.toNamed("/auth");
                      } else {
                        Get.toNamed("/checkout");
                      }
                    },
                    child: Container(
                      width: 116,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xffFC4704),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Proceed",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
