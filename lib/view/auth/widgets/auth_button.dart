import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthButton extends StatefulWidget {
  final String text;
  final Function onTap;
  const AuthButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<AuthButton> createState() => _AuthButtonState();
}

class _AuthButtonState extends State<AuthButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        setState(() {
          loading = true;
        });
        await widget.onTap();
        setState(() {
          loading = false;
        });
      },
      child: Container(
        width: Get.width - 32,
        height: 64,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xfffc4704)),
        child: Center(
            child: loading
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  )
                : Text(
                    widget.text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
      ),
    );
  }
}
