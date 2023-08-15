import 'package:flutter/material.dart';

class ItemsHeader extends StatelessWidget {
  final String header;
  final Function seeMore;
  const ItemsHeader({
    super.key,
    required this.header,
    required this.seeMore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            header,
            style: const TextStyle(
                color: Color(0xff16191D),
                fontSize: 18,
                fontWeight: FontWeight.w700),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            seeMore();
          },
          child: const Text(
            "See All",
            style: TextStyle(color: Color(0xfffc4704)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 8.0, left: 8, bottom: 2),
          child: Icon(
            Icons.arrow_forward_ios_sharp,
            size: 14,
            color: Color(0xfffc4704),
          ),
        ),
      ],
    );
  }
}
