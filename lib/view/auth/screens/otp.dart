import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:mero_discount/view/auth/widgets/auth_button.dart';
import 'package:mero_discount/view/auth/widgets/mero_textfield.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 36,
          ),
          MeroTextField(
            controller: TextEditingController(),
            type: TextFieldType.otp,
          ),
          const SizedBox(
            height: 24,
          ),
          AuthButton(
              onTap: () {
                authController.changeAuthState(AuthState.forgetPassword);
              },
              text: "Verify"),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Didn't receive a code? Resend in 60sec.",
            style: TextStyle(color: Color(0xff93999F)),
          )
        ],
      ),
    );
  }
}
