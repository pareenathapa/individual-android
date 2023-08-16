import 'package:flutter/material.dart';
import 'package:mero_discount/data/functions/ui/auth_function.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:pinput/pinput.dart';

class MeroTextField extends StatefulWidget {
  final TextEditingController controller;
  final TextFieldType type;
  final String? hintText;

  const MeroTextField({
    super.key,
    required this.controller,
    required this.type,
    this.hintText,
  });

  @override
  State<MeroTextField> createState() => _MeroTextFieldState();
}

class _MeroTextFieldState extends State<MeroTextField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.hintText ?? authState.getTextFieldHint(widget.type)),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 50,
            child: widget.type == TextFieldType.otp
                ? Pinput(
                    length: 5,
                    androidSmsAutofillMethod:
                        AndroidSmsAutofillMethod.smsRetrieverApi,
                    controller: widget.controller,
                    defaultPinTheme: PinTheme(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xffE5E5E6))),
                      margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      padding: const EdgeInsets.all(4),
                    ),
                  )
                : TextField(
                    controller: widget.controller,
                    obscureText:
                        TextFieldType.password == widget.type ? obscure : false,
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE5E5E6), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE5E5E6), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xffE5E5E6), width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding: const EdgeInsets.only(top: 4),
                        hintText: widget.hintText ??
                            authState.getTextFieldHint(widget.type),
                        hintStyle: const TextStyle(color: Color(0xff93999F)),
                        prefixIcon: Container(
                          margin: const EdgeInsets.fromLTRB(8, 8, 24, 8),
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xfffff3d9)),
                          child: Center(
                            child: SizedBox(
                                width: 18,
                                height: 18,
                                child: Image.asset(
                                    authState.getTextFieldPrefix(widget.type))),
                          ),
                        ),
                        suffixIcon: widget.type == TextFieldType.password
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscure = !obscure;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: SizedBox(
                                      width: 18,
                                      height: 18,
                                      child: Image.asset(
                                        !obscure
                                            ? "assets/icons/eye.png"
                                            : "assets/icons/eyeClose.png",
                                        fit: BoxFit.contain,
                                      )),
                                ),
                              )
                            : const SizedBox()),
                  ),
          ),
        ],
      ),
    );
  }
}
