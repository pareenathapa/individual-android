import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Voucher extends StatelessWidget {
  const Voucher({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(
              colors: [Color(0xffFFB30E), Color(0xffFC4704)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight)),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.all(12),
              width: 36,
              height: 36,
              child: Image.asset("assets/images/discount.png")),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "20% OFF UP TO Rs. 150",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Text(
                    "USE",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    " MERODISCOUNT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    " | ABOVE Rs. 350",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
