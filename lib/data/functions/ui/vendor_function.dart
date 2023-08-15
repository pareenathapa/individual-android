import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/static/enum/vendor.dart';

class VendorFunctions {
  getServiceWidget(ServiceType type,
      {bool available = true, bool selected = false}) {
    switch (type) {
      case ServiceType.homeDelivery:
        return Row(
          children: [
            SizedBox(
                width: 16,
                height: 16,
                child: Image.asset("assets/images/delivery.png")),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Home Delivery",
              style: TextStyle(
                  color: selected
                      ? const Color(0xffFC4704)
                      : const Color(0xff5E656E),
                  decoration: available
                      ? TextDecoration.none
                      : TextDecoration.lineThrough),
            )
          ],
        );
      case ServiceType.takeaway:
        return Row(
          children: [
            SizedBox(
                width: 16,
                height: 16,
                child: Image.asset("assets/images/takeAway.png")),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Takeaway",
              style: TextStyle(
                  color: selected
                      ? const Color(0xffFC4704)
                      : const Color(0xff5E656E),
                  decoration: available
                      ? TextDecoration.none
                      : TextDecoration.lineThrough),
            )
          ],
        );
      case ServiceType.dineIn:
        return Row(
          children: [
            SizedBox(
                width: 16,
                height: 16,
                child: Image.asset("assets/images/dineIn.png")),
            const SizedBox(
              width: 4,
            ),
            Text(
              "Dine In",
              style: TextStyle(
                  color: selected
                      ? const Color(0xffFC4704)
                      : const Color(0xff5E656E),
                  decoration: available
                      ? TextDecoration.none
                      : TextDecoration.lineThrough),
            )
          ],
        );
    }
  }

  getVendorOffset(ServiceType type) {
    switch (type) {
      case ServiceType.homeDelivery:
        return 0.0;
      case ServiceType.takeaway:
        return (Get.width - 40) * 0.432;
      case ServiceType.dineIn:
        return (Get.width - 40) * 0.78;
    }
  }

  fromInt(int i) {
    switch (i) {
      case 0:
        return ServiceType.homeDelivery;
      case 1:
        return ServiceType.takeaway;
      case 2:
        return ServiceType.dineIn;
      default:
        return ServiceType.homeDelivery;
    }
  }
}

final VendorFunctions vendorFunctions = VendorFunctions();
