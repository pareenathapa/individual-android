import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/main/screens/Account/model/option.dart';

class Account extends StatelessWidget {
  Account({super.key});
  final List<Options> accountOptions = [
    Options(
        image: "assets/icons/info.png",
        title: "My Information",
        detail: "Manage your Personal Details",
        onTap: () {}),
    Options(
        image: "assets/icons/order.png",
        title: "My Order",
        detail: "Manage your Order History and Status",
        onTap: () {}),
    Options(
        image: "assets/icons/security.png",
        title: "Security Login",
        detail: "Update Your Account Security Settings",
        onTap: () {}),
    Options(
        image: "assets/icons/address.png",
        title: "My Address",
        detail: "Manage Your Shipping Addresses",
        onTap: () {}),
    Options(
        image: "assets/icons/payment.png",
        title: "Payment Options",
        detail: "Manage your Payment Methods",
        onTap: () {}),
    Options(
        image: "assets/icons/wishlist.png",
        title: "My Wishlist",
        detail: "Manage your Favorite Items",
        onTap: () {}),
    Options(
        image: "assets/icons/review.png",
        title: "My Review",
        detail: "View and Edit Your Product Reviews",
        onTap: () {}),
    Options(
        image: "assets/icons/reward.png",
        title: "Reward Points",
        detail: "View and Manage Your Reward Points",
        onTap: () {})
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: Get.width,
      height: Get.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "My account",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
                ),
              ),
            ),
            for (Options option in accountOptions)
              Container(
                width: Get.width,
                height: 70,
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xffE5E5E6))),
                child: Center(
                  child: ListTile(
                    leading: SizedBox(
                        width: 38,
                        height: 38,
                        child: Image.asset(option.image)),
                    title: Text(
                      option.title,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      option.detail,
                      style: const TextStyle(
                          color: Color(0xff93999F), fontSize: 12),
                    ),
                    trailing: Container(
                      width: 24,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF6F7F9)),
                      child: const Center(
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xff747783),
                        ),
                      ),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    ));
  }
}
