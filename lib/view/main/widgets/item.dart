import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/models/item.dart';

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.item,
    required this.width,
    required this.height,
  });

  final ItemModel item;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/vendor");
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        height: height,
        width: width,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                  height: height - 64,
                  width: width,
                  child: Stack(children: [
                    SizedBox(
                        width: width,
                        height: height - 64,
                        child: Image.asset(
                          item.image,
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      top: 10,
                      left: 0,
                      child: Container(
                          height: 24,
                          width: 104,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/tag.png"),
                                  fit: BoxFit.cover)),
                          child: const Padding(
                              padding: EdgeInsets.only(left: 6, top: 4),
                              child: Text(
                                "upto 20% off",
                                style: TextStyle(color: Colors.white),
                              ))),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 45,
                          height: 24,
                          decoration: const BoxDecoration(
                              color: Color(0xffffb30E),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8))),
                          child: const Center(
                            child: Text(
                              "New",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ))
                  ])),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Marcopolo Restaurant",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Durbar Marg, Kathmandu",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: Image.asset(
                            "assets/icons/moped.png",
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Text(
                          "20-30 min",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, right: 4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: Color(0xfffc4704),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "4.7/5",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
