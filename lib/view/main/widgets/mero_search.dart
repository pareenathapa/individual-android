import 'package:flutter/material.dart';

class MeroSearch extends StatelessWidget {
  const MeroSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: const TextField(
          decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffE5E5E6),
              contentPadding: EdgeInsets.only(top: 14),
              border: InputBorder.none,
              hintText: "Search anything...",
              prefixIcon: Icon(
                Icons.search,
                color: Color(0xffFC4704),
              )),
        ));
  }
}
