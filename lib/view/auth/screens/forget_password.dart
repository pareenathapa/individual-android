import 'package:flutter/material.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:mero_discount/view/auth/widgets/auth_button.dart';
import 'package:mero_discount/view/auth/widgets/mero_textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

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
        AuthButton(
            onTap: () {
              authController.changeAuthState(AuthState.resetPassword);
            },
            text: "Reset Password"),
        const SizedBox(
          height: 28,
        ),
        GestureDetector(
          onTap: () {
            authController.changeAuthState(AuthState.signIn);
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              SizedBox(
                width: 8,
              ),
              Text(
                "Back to",
                style: TextStyle(fontSize: 16, color: Color(0xff93999F)),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFC6D37),
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
      ],
    );
  }
}
