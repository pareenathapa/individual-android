import 'package:flutter/material.dart';

class MeroCheckBox extends StatelessWidget {
  const MeroCheckBox({
    super.key,
    required this.selected,
  });

  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
          color: selected ? const Color(0xffFC4704) : Colors.white,
          border: Border.all(
              width: 1,
              color: selected
                  ? const Color(0xffFC4704)
                  : const Color(0xffE5E5E6))),
      child: selected
          ? const Center(
              child: Icon(
              Icons.check,
              size: 12,
              color: Colors.white,
            ))
          : const SizedBox(),
    );
  }
}
