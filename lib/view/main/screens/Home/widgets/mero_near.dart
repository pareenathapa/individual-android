import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/models/item.dart';
import 'package:mero_discount/view/main/widgets/item.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/item_header.dart';

class MeroNear extends StatelessWidget {
  const MeroNear({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemsHeader(
          header: "Near You",
          seeMore: () {},
        ),
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
                  Item(
                    height: 204,
                    width: 311,
                    item: ItemModel(image: "assets/temp/images/near.png"),
                  )
              ],
            ),
          ),
        )
      ],
    );
  }
}
