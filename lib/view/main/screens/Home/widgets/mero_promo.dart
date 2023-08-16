import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/item_header.dart';

class MeroPromo extends StatelessWidget {
  const MeroPromo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemsHeader(header: "Promo for More Savings", seeMore: () {}),
        SizedBox(
          width: Get.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                for (int i = 0; i < 3; i++)
                  Container(
                      margin: const EdgeInsets.all(8),
                      width: 256,
                      height: 104,
                      child: Image.asset("assets/temp/images/promo.png"))
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 32,
        )
      ],
    );
  }
}
