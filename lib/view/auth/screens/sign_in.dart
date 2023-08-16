import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/data/functions/api/auth/auth.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:mero_discount/view/auth/widgets/auth_button.dart';
import 'package:mero_discount/view/auth/widgets/auto_auth.dart';
import 'package:mero_discount/view/auth/widgets/mero_textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 36,
        ),
        MeroTextField(
          controller: TextEditingController(),
          type: TextFieldType.email,
        ),
        const SizedBox(
          height: 24,
        ),
        MeroTextField(
          controller: TextEditingController(),
          type: TextFieldType.password,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          width: Get.width - 32,
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {
              authController.changeAuthState(AuthState.forgetPassword);
            },
            child: const Text(
              "Forgot password?",
              style: TextStyle(color: Color(0xffFC4704), fontSize: 12),
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        AuthButton(
            onTap: () async {
              await authApi.login("ssk@o3a1cg.com", "password");
              authController.updateToken("xyz");
              Get.back();
              // authController.changeAuthState(AuthState.otp);
            },
            text: "Log In"),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Don't have an account?",
              style: TextStyle(color: Color(0xff93999F)),
            ),
            const SizedBox(
              width: 4,
            ),
            GestureDetector(
              onTap: () {
                authController.changeAuthState(AuthState.signUp);
              },
              child: const Text(
                "Sign Up",
                style: TextStyle(color: Color(0xffFC4704)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        const AutoAuth()
      ],
    );
  }
}
