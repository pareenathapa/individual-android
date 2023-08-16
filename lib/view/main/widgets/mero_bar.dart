import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MeroBar extends StatelessWidget {
  const MeroBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          GestureDetector(
            onTap: () async {
              await Get.bottomSheet(Container(
                height: 254,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16))),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 4,
                        width: 64,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffcaccce)),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "Select City",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Text(
                        "Explore amazing discounts near you",
                        style: TextStyle(),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        width: Get.width,
                        child: Wrap(
                          alignment: WrapAlignment.spaceEvenly,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Container(
                                width: 164,
                                height: 48,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: const Color.fromRGBO(
                                            70, 76, 83, 0.14)),
                                    borderRadius: BorderRadius.circular(4)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 34,
                                        height: 34,
                                        child: Image.asset(
                                            "assets/temp/images/location.png"),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Kathmandu",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 2,
                                          ),
                                          Text(
                                            "120+ Stores",
                                            style: TextStyle(fontSize: 12),
                                          )
                                        ],
                                      )
                                    ]),
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ));
            },
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  SizedBox(
                    width: 12,
                    height: 16,
                    child: Image.asset(
                      "assets/icons/location.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Delivery to ",
                    style: TextStyle(
                        color: Color(0xff464C53), fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    "Lalitpur",
                    style: TextStyle(color: Color(0xffFC4704)),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                "Gyanodaya Pustakalaya Marg, Lalitpur",
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: Color(0xff16191D)),
              )
            ]),
          ),
          const Spacer(),
          SizedBox(
            width: 29,
            height: 26,
            child: Stack(children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Image.asset("assets/icons/bell.png"),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 18,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      shape: BoxShape.circle,
                      color: const Color(0xffFC4704)),
                  child: const Center(
                    child: Text(
                      "1",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
