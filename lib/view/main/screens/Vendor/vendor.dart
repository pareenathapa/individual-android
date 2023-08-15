import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/main/screens/Vendor/widgets/vendor_details.dart';
import 'package:mero_discount/view/main/screens/Vendor/widgets/vendor_image.dart';
import 'package:mero_discount/view/main/screens/Vendor/widgets/vendor_offers.dart';
import 'package:mero_discount/view/main/screens/Vendor/widgets/vendor_services.dart';

class Vendor extends StatefulWidget {
  const Vendor({super.key});

  @override
  State<Vendor> createState() => _VendorState();
}

class _VendorState extends State<Vendor> {
  bool liked = false;
  List<String> category = [
    "Breakfast",
    "MoMo",
    "Burger",
    "Pizza",
    "Chaumin",
    "Khajaset",
    "Thali Set"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Stack(children: [
          const Column(
            children: [
              VendorImage(),
              VendorDetail(),
              VendorOffers(),
              VendorServices()
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                width: Get.width,
                height: 140,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Text(
                                'Food Menu',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              for (int i = 0; i < category.length; i++)
                                Container(
                                  height: 54,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color(0xffE5E5E6)))),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    category[i],
                                    style: TextStyle(
                                        fontSize: 16, color: Color(0xff16191D)),
                                  ),
                                )
                            ],
                          ),
                        ));
                      },
                      child: Container(
                        width: 98,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xffFC4704),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Menu",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: Get.width,
                      height: 80,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(8))),
                      child: Row(
                        children: [
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.badge,
                                    size: 12,
                                    color: Color(0xff777F88),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    "Your basket",
                                    style: TextStyle(color: Color(0xff777F88)),
                                  )
                                ],
                              ),
                              Text(
                                "2 items added",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed("/basket");
                            },
                            child: Container(
                              height: 40,
                              width: 148,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: const Color(0xffFC4704)),
                              child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Go To Basket",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_right_rounded,
                                      color: Colors.white,
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
