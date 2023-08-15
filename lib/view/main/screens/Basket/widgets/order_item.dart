import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  final String title;
  final int amount;
  const OrderItem({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Text(title),
          const Spacer(),
          Text(
            "Rs. $amount",
            style: const TextStyle(fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
