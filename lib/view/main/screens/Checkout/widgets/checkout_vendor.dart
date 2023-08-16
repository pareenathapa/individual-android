import 'package:flutter/material.dart';
import 'package:mero_discount/view/main/screens/Basket/widgets/vendor_child.dart';
import 'package:mero_discount/view/main/screens/Checkout/widgets/vendor_child.dart';

class CheckOutVendor extends StatefulWidget {
  const CheckOutVendor({
    super.key,
  });

  @override
  State<CheckOutVendor> createState() => _CheckOutVendorState();
}

class _CheckOutVendorState extends State<CheckOutVendor> {
  bool selected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: const Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Mero Discounts",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          CheckOutVendorChild()
        ],
      ),
    );
  }
}
