import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/voucher.dart';

class VendorOffers extends StatefulWidget {
  const VendorOffers({super.key});

  @override
  State<VendorOffers> createState() => _VendorOffersState();
}

class _VendorOffersState extends State<VendorOffers> {
  int voucherCount = 4;
  int currentVoucher = 0;
  final PageController voucherController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: Get.width,
            height: 76,
            child: PageView(
                controller: voucherController,
                onPageChanged: (page) {
                  setState(() {
                    currentVoucher = page;
                  });
                },
                children: [
                  for (int i = 0; i < voucherCount; i++) const Voucher()
                ])),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < voucherCount; i++)
              Container(
                margin: const EdgeInsets.all(2),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: i == currentVoucher
                        ? const Color(0xffFC4704)
                        : const Color(0xffFCC9B5)),
              )
          ],
        ),
      ],
    );
  }
}
