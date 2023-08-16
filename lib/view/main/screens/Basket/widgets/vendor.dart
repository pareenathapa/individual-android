import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/vendor_child.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/voucher.dart';
import 'package:mero_discount/view/widgets/mero_checkbox.dart';

class BasketVendor extends StatefulWidget {
  const BasketVendor({
    super.key,
  });

  @override
  State<BasketVendor> createState() => _BasketVendorState();
}

class _BasketVendorState extends State<BasketVendor> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: MeroCheckBox(selected: selected)),
              const SizedBox(
                width: 8,
              ),
              const Text(
                "Mero Discounts",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(Container(
                    height: 340,
                    width: Get.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(16))),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 4,
                          width: 64,
                          decoration: BoxDecoration(
                              color: const Color(0xffCACCCE),
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Voucher from store",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        for (int i = 0; i < 3; i++) const Voucher()
                      ],
                    ),
                  ));
                },
                child: const Text(
                  "Get discount",
                  style: TextStyle(fontSize: 12, color: Color(0xffFC4704)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          for (int i = 0; i < 2; i++) const BasketVendorChild()
        ],
      ),
    );
  }
}
