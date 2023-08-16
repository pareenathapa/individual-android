import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/functions/ui/vendor_function.dart';
import 'package:mero_discount/static/enum/vendor.dart';

class VendorServices extends StatefulWidget {
  const VendorServices({super.key});

  @override
  State<VendorServices> createState() => _VendorServicesState();
}

class _VendorServicesState extends State<VendorServices> {
  ServiceType currentService = ServiceType.homeDelivery;
  final PageController serviceTitleController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(4),
          width: Get.width - 32,
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffE5E5E6)),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(children: [
            AnimatedPositioned(
                curve: Curves.linearToEaseOut,
                duration: const Duration(milliseconds: 500),
                left: vendorFunctions.getVendorOffset(currentService),
                child: Container(
                  height: 30,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: const Color(0xffFCDBCF),
                      borderRadius: BorderRadius.circular(20)),
                  child: Opacity(
                      opacity: 0,
                      child: vendorFunctions.getServiceWidget(
                        currentService,
                      )),
                )),
            Center(
              child: SizedBox(
                height: 36,
                width: Get.width - 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentService = ServiceType.homeDelivery;
                          serviceTitleController.animateToPage(0,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                      child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: vendorFunctions.getServiceWidget(
                              ServiceType.homeDelivery,
                              selected:
                                  currentService == ServiceType.homeDelivery)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentService = ServiceType.takeaway;
                          serviceTitleController.animateToPage(1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                      child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: vendorFunctions.getServiceWidget(
                              ServiceType.takeaway,
                              selected:
                                  currentService == ServiceType.takeaway)),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          currentService = ServiceType.dineIn;
                          serviceTitleController.animateToPage(2,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.linearToEaseOut);
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 8,
                        ),
                        child: vendorFunctions.getServiceWidget(
                            ServiceType.dineIn,
                            selected: currentService == ServiceType.dineIn),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
        SizedBox(
          height: Get.height * 0.48,
          width: Get.width,
          child: PageView(
            controller: serviceTitleController,
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (page) {
              setState(() {
                currentService = vendorFunctions.fromInt(page);
              });
            },
            children: [
              for (ServiceType type in ServiceType.values) const ServicePage(),
            ],
          ),
        ),
      ],
    );
  }
}

class ServicePage extends StatelessWidget {
  const ServicePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductType(
              count: 3,
              type: "Recommended",
            ),
            ProductType(
              count: 3,
              type: "Pizza",
            )
          ],
        ),
      ),
    );
  }
}

class ProductType extends StatelessWidget {
  final String type;
  final int count;
  const ProductType({
    super.key,
    required this.type,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$type ($count)",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          for (int i = 0; i < 3; i++) const VendorProduct()
        ],
      ),
    );
  }
}

class VendorProduct extends StatefulWidget {
  const VendorProduct({
    super.key,
  });

  @override
  State<VendorProduct> createState() => _VendorProductState();
}

class _VendorProductState extends State<VendorProduct> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.bottomSheet(StatefulBuilder(
          builder: (context, setState) => Container(
            width: Get.width,
            height: 400,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 200,
                    width: Get.width,
                    child: Image.asset(
                      "assets/temp/images/burgerB.png",
                      fit: BoxFit.cover,
                    )),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 16,
                        child: Text(
                          "Bold-Bingo Burger",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: Get.width * 0.51,
                        height: 48,
                        child: const Text(
                          "100% Freshly Minced Lamb Patty, Blue, Cheese, Caramelized Onions, A-sauce, Natural Cheese Blend & Lettuce",
                          maxLines: 3,
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff5e656e)),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 16,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              RatingBar.builder(
                                glow: false,
                                allowHalfRating: true,
                                ignoreGestures: true,
                                itemSize: 16,
                                initialRating: 4.7,
                                onRatingUpdate: (double value) {},
                                itemBuilder: (BuildContext context, int index) {
                                  return const Icon(
                                    Icons.star_rounded,
                                    color: Color(0xffFC4704),
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              const Text(
                                "112 ratings",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff16191d)),
                              )
                            ]),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 38,
                        width: Get.width,
                        child: Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Rs. 320",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xfffc4704)),
                                ),
                                Text(
                                  "Rs. 400",
                                  style: TextStyle(
                                      color: Color(0xff777f88),
                                      decoration: TextDecoration.lineThrough),
                                )
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                if (count != 0) {
                                  count--;
                                  setState(() {});
                                }
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: const Color(0xffFC4704)),
                                child: Center(
                                  child: SizedBox(
                                      width: 14,
                                      height: 14,
                                      child: Image.asset(
                                          "assets/icons/minus.png")),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(count.toString()),
                            const SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                // if (amount != 0) {
                                count++;
                                setState(() {});
                                // }
                              },
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: const Color(0xffFC4704)),
                                child: Center(
                                  child: SizedBox(
                                      width: 14,
                                      height: 14,
                                      child:
                                          Image.asset("assets/icons/plus.png")),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 128,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffe5e5e6)),
            borderRadius: BorderRadius.circular(4)),
        child: Row(
          children: [
            Image.asset("assets/temp/images/burgerR.png"),
            const SizedBox(
              width: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                    child: Text(
                      "Bold-Bingo Burger",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: Get.width * 0.51,
                    height: 24,
                    child: const Text(
                      "100% Freshly Minced Lamb Patty, Blue, Cheese, Caramelized Onions, A-sauce, Natural Cheese Blend & Lettuce",
                      maxLines: 2,
                      style: TextStyle(fontSize: 10, color: Color(0xff5e656e)),
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 12,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RatingBar.builder(
                            glow: false,
                            allowHalfRating: true,
                            ignoreGestures: true,
                            itemSize: 12,
                            initialRating: 4.7,
                            onRatingUpdate: (double value) {},
                            itemBuilder: (BuildContext context, int index) {
                              return const Icon(
                                Icons.star_rounded,
                                color: Color(0xffFC4704),
                              );
                            },
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const Text(
                            "112 ratings",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff16191d)),
                          )
                        ]),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    height: 32,
                    width: Get.width * 0.52,
                    child: Row(
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rs. 320",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xfffc4704)),
                            ),
                            Text(
                              "Rs. 400",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff777f88),
                                  decoration: TextDecoration.lineThrough),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: 56,
                          height: 24,
                          decoration: BoxDecoration(
                              color: const Color(0xfffc4704),
                              borderRadius: BorderRadius.circular(6)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 12,
                                height: 12,
                                child: Image.asset("assets/icons/plus.png"),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text(
                                "Add",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
