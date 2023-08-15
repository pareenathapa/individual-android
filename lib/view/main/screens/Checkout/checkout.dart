import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/order_item.dart';
import 'package:mero_discount/view/main/screens/Checkout/widgets/checkout_vendor.dart';

class Checkout extends StatefulWidget {
  Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  DateTime selected = DateTime.now();

  List<DateTime> dates = [
    for (int i = 0; i < 6; i++) DateTime.now().add(Duration(days: i))
  ];

  List<String> times = [
    "As soon as possible",
    "12:00 - 12:30",
    "12:30 - 13:00",
    "13:00 - 13:30",
    "13:30 - 14:00"
  ];
  String selectedTime = "As soon as possible";
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
                      "Checkout",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: Get.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Deliver to: Salman Khan",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xff16191D)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "9800000000, demo@gmail.com",
                      style: TextStyle(color: Color(0xff2E3338)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      "OCG group pvt. ltd., Jhamsikhel, Lalitpur-2, Bagmati Province",
                      style: TextStyle(color: Color(0xff5E656E)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/address");
                      },
                      child: const Text(
                        "Change",
                        style: TextStyle(color: Color(0xffFC4704)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: Get.width,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Deliver date & time",
                          style: TextStyle(
                              color: Color(0xff16191D),
                              fontWeight: FontWeight.w700),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () async {
                            await Get.bottomSheet(StatefulBuilder(
                              builder: (context, setState) => Container(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 12, 16, 0),
                                height: Get.height * 0.5,
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
                                          color: const Color(0xffCACCCE),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                    ),
                                    const SizedBox(
                                      height: 24,
                                    ),
                                    const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'Schedule Delivery',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        children: [
                                          for (DateTime date in dates)
                                            GestureDetector(
                                              onTap: () {
                                                selected = date;
                                                setState(() {});
                                              },
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        4, 16, 4, 16),
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        16, 8, 16, 8),
                                                decoration: BoxDecoration(
                                                    color:
                                                        selected.isSameDay(date)
                                                            ? const Color(
                                                                0xffFCEDE8)
                                                            : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    border: Border.all(
                                                        color: selected
                                                                .isSameDay(date)
                                                            ? const Color(
                                                                0xffFC4704)
                                                            : const Color(
                                                                0xffE5E5E6))),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      date.toDayOfWeekString(),
                                                      style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color(
                                                              0xff16191D)),
                                                    ),
                                                    const SizedBox(
                                                      height: 4,
                                                    ),
                                                    Text(
                                                      DateFormat('MMM dd')
                                                          .format(date),
                                                      style: const TextStyle(
                                                          fontSize: 12,
                                                          color: Color(
                                                              0xff5E656E)),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    for (String time in times)
                                      GestureDetector(
                                        onTap: () {
                                          selectedTime = time;
                                          setState(() {});
                                        },
                                        child: Container(
                                          height: 48,
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                  bottom: BorderSide(
                                                      color:
                                                          Color(0xffE5E5E6)))),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 16,
                                                decoration: BoxDecoration(
                                                    color: selectedTime == time
                                                        ? const Color(
                                                            0xffFC4704)
                                                        : Colors.white,
                                                    border: Border.all(
                                                        color: selectedTime ==
                                                                time
                                                            ? const Color(
                                                                0xffFC4704)
                                                            : const Color(
                                                                0xffE5E5E6)),
                                                    shape: BoxShape.circle),
                                                child: const Center(
                                                  child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                    size: 12,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                time,
                                                style: const TextStyle(
                                                    color: Color(0xff16191D)),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ));
                            setState(() {});
                          },
                          child: const Text(
                            "Change",
                            style: TextStyle(color: Color(0xffFC4704)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      selected.toFormattedDateString(),
                      style: const TextStyle(
                          color: Color(0xff464C53),
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      selectedTime,
                      style: const TextStyle(color: Color(0xff5E656E)),
                    ),
                  ],
                ),
              ),
              const CheckOutVendor(),
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
                            decoration:
                                InputDecoration(border: OutlineInputBorder()),
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
                      // Get.toNamed("/auth");
                      Get.toNamed("/payment");
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

extension DateTimeExtensions on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  String toDayOfWeekString() {
    DateTime today = DateTime.now();
    if (year == today.year && month == today.month && day == today.day) {
      return 'Today';
    } else {
      DateTime tomorrow = today.add(const Duration(days: 1));
      if (year == tomorrow.year &&
          month == tomorrow.month &&
          day == tomorrow.day) {
        return 'Tomorrow';
      } else {
        switch (weekday) {
          case DateTime.monday:
            return 'Monday';
          case DateTime.tuesday:
            return 'Tuesday';
          case DateTime.wednesday:
            return 'Wednesday';
          case DateTime.thursday:
            return 'Thursday';
          case DateTime.friday:
            return 'Friday';
          case DateTime.saturday:
            return 'Saturday';
          case DateTime.sunday:
            return 'Sunday';
          default:
            throw Exception('Invalid day of the week');
        }
      }
    }
  }

  String toFormattedDateString() {
    final now = DateTime.now();
    final tomorrow = now.add(const Duration(days: 1));

    if (year == now.year && month == now.month && day == now.day) {
      return 'Today: ${DateFormat('EEE, d MMM, yyyy').format(this)}';
    } else if (year == tomorrow.year &&
        month == tomorrow.month &&
        day == tomorrow.day) {
      return 'Tomorrow: ${DateFormat('EEE, d MMM, yyyy').format(this)}';
    } else {
      return DateFormat('EEE, d MMM, yyyy').format(this);
    }
  }
}
