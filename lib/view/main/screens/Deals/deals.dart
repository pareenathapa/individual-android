import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/models/item.dart';
import 'package:mero_discount/view/main/widgets/item.dart';
import 'package:mero_discount/view/main/widgets/mero_bar.dart';
import 'package:mero_discount/view/main/widgets/mero_search.dart';

class Deals extends StatelessWidget {
  const Deals({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: MeroBar(),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: MeroSearch(),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Deals",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Discover incredible discounts and special offers",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            for (int i = 0; i < 10; i++)
              Item(
                  height: (Get.width - 32) * 0.65,
                  width: Get.width - 32,
                  item: ItemModel(image: "assets/temp/images/near.png"))
          ],
        ),
      ),
    ));
  }
}
