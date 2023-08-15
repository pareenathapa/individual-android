import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/order_item.dart';
import 'package:mero_discount/view/main/screens/Track/widgets/track_child.dart';

class TrackMyOrder extends StatelessWidget {
  const TrackMyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFCF8F7),
        body: SafeArea(
            child: SizedBox(
                width: Get.width,
                height: Get.height,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
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
                            "Track Order",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Text(
                            "Order ID: #1231",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff16191D)),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.bottomSheet(Container(
                                padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                                height: Get.height * 0.6,
                                width: Get.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 4,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: Color(0xffCACCCE),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    SizedBox(
                                      height: 24,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Order List',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    for (int i = 0; i < 3; i++) TrackChild()
                                  ],
                                ),
                              ));
                            },
                            child: Text(
                              "See order list",
                              style: TextStyle(
                                  color: Color(0xffFC4704), fontSize: 16),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "Marcopolo Restaurent",
                        style:
                            TextStyle(color: Color(0xffFC4704), fontSize: 16),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        "26 May, 2023 2:24 PM",
                        style: TextStyle(color: Color(0xff16191D)),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        width: Get.width,
                        padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            SizedBox(
                                width: 120,
                                height: 120,
                                child:
                                    Image.asset("assets/images/confirm.png")),
                            const SizedBox(
                              height: 16,
                            ),
                            const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Indicator(
                                    label: "Order being processed",
                                    incoming: false,
                                    incomingActive: false,
                                    outgoing: true,
                                    done: true,
                                  ),
                                  Indicator(
                                    label: "Order confirm",
                                    incoming: true,
                                    incomingActive: true,
                                    outgoing: true,
                                    done: true,
                                  ),
                                  Indicator(
                                    label: "Food cooking",
                                    incoming: true,
                                    incomingActive: true,
                                    outgoing: true,
                                    done: false,
                                  ),
                                  Indicator(
                                    label: "Food cooking",
                                    incoming: true,
                                    incomingActive: false,
                                    outgoing: true,
                                    done: false,
                                  ),
                                  Indicator(
                                    label: "Food cooking",
                                    incoming: true,
                                    incomingActive: false,
                                    outgoing: false,
                                    done: false,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 46,
                              width: 146,
                              decoration: BoxDecoration(
                                  color: const Color(0xffFC4704),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                          "assets/icons/moped_white.png")),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  const Text(
                                    "Track Me",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
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
                    ],
                  ),
                ))));
  }
}

class Indicator extends StatelessWidget {
  final String label;
  final bool incoming;
  final bool incomingActive;
  final bool outgoing;
  final bool done;
  const Indicator({
    super.key,
    required this.label,
    required this.incoming,
    required this.outgoing,
    required this.done,
    required this.incomingActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 43,
              height: 1,
              color: incoming
                  ? incomingActive
                      ? const Color(0xffFC4704)
                      : const Color(0xffAFB2B6)
                  : Colors.white,
            ),
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: done ? const Color(0xffFC4704) : Colors.white,
                  border: Border.all(
                      color: done
                          ? const Color(0xffFC4704)
                          : const Color(0xffAFB2B6))),
              child: const Center(
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              width: 43,
              height: 1,
              color: outgoing
                  ? done
                      ? const Color(0xffFC4704)
                      : const Color(0xffAFB2B6)
                  : Colors.white,
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
            width: 80,
            child: Text(
              label,
              textAlign: TextAlign.center,
            ))
      ],
    );
  }
}
