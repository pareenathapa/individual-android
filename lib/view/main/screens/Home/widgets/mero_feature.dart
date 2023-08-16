import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/item_header.dart';

class MeroFeature extends StatelessWidget {
  const MeroFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemsHeader(header: "Feature Seller", seeMore: () {}),
        SizedBox(
          width: Get.width,
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            children: [for (int i = 0; i < 8; i++) const FeatureItem()],
          ),
        ),
      ],
    );
  }
}

class FeatureItem extends StatelessWidget {
  const FeatureItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              width: 72,
              height: 72,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              clipBehavior: Clip.hardEdge,
              child: Image.asset("assets/temp/images/seller.png")),
          const SizedBox(
            height: 4,
          ),
          const SizedBox(
            width: 74,
            child: Text(
              "Embassy Restaurant & Bar",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
