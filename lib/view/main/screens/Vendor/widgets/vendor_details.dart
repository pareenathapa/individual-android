import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mero_discount/data/functions/ui/vendor_function.dart';
import 'package:mero_discount/static/enum/vendor.dart';

class VendorDetail extends StatelessWidget {
  const VendorDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Marcopolo Restaurant",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          const SizedBox(
            height: 2,
          ),
          const Row(
            children: [
              Text(
                "Lazimpat, Kathmandu",
                style: TextStyle(color: Color(0xff5E656E)),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "View Location",
                style: TextStyle(color: Color(0xffFC4704), fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            child: Row(
              children: [
                RatingBar.builder(
                  glow: false,
                  allowHalfRating: true,
                  ignoreGestures: true,
                  itemSize: 18,
                  initialRating: 4.7,
                  onRatingUpdate: (double value) {},
                  itemBuilder: (BuildContext context, int index) {
                    return const Icon(
                      Icons.star_rounded,
                      color: Color(0xffFC4704),
                    );
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "4.7/5",
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: vendorFunctions.getServiceWidget(
                      ServiceType.homeDelivery,
                      available: true)),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: vendorFunctions.getServiceWidget(ServiceType.takeaway,
                      available: true)),
              Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: vendorFunctions.getServiceWidget(ServiceType.dineIn,
                      available: false))
            ],
          )
        ]),
      ),
    );
  }
}
