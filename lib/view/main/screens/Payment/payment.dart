import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/functions/ui/payment_function.dart';
import 'package:mero_discount/static/enum/payment.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/order_item.dart';
import 'package:mero_discount/view/main/widgets/dialog.dart';

class Paymnet extends StatefulWidget {
  const Paymnet({super.key});

  @override
  State<Paymnet> createState() => _PaymnetState();
}

class _PaymnetState extends State<Paymnet> {
  PaymentMethod currentPaymentMethod = PaymentMethod.cod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCF8F7),
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(children: [
          Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_rounded)),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Payment",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                width: Get.width - 32,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                padding: const EdgeInsets.all(16),
                child: const Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Order Summary",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OrderItem(
                      title: "Subtotal",
                      amount: 320,
                    ),
                    OrderItem(
                      title: "Shipping Fee",
                      amount: 0,
                    ),
                    OrderItem(
                      title: "Promotion",
                      amount: 0,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
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
              Container(
                width: Get.width,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Payment Options",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (PaymentMethod method in PaymentMethod.values)
                          GestureDetector(
                            onTap: () {
                              currentPaymentMethod = method;
                              setState(() {});
                            },
                            child: Container(
                              width: Get.width * 0.39,
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: method == currentPaymentMethod
                                          ? const Color(0xffFC4704)
                                          : const Color(0xffE5E5E6)),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 32,
                                    height: 32,
                                    child: Image.asset(
                                        paymentFunction.getMethodImage(method)),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    paymentFunction.getMethodText(method),
                                    style: const TextStyle(
                                        color: Color(0xff16191D)),
                                  )
                                ],
                              ),
                            ),
                          )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: Get.width,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: const Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Special Instruction",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 100,
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        minLines: 3,
                        cursorColor: Color(0xffFC4704),
                        decoration: InputDecoration(
                            // border: OutlineInputBorder(
                            //     borderSide: BorderSide(color: Color(0xffFC4704))),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffFC4704))),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xffFC4704))),
                            hintText:
                                "Type here if you have any special instruction for this order",
                            hintStyle: TextStyle(color: Color(0xff93999F)),
                            hintMaxLines: 2),
                      ),
                    )
                  ],
                ),
              )
            ],
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
                      Get.dialog(const MeroDialog());
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
