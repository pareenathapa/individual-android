import 'package:flutter/material.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:mero_discount/view/auth/widgets/auth_button.dart';
import 'package:mero_discount/view/auth/widgets/mero_textfield.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
          type: TextFieldType.password,
          hintText: "New Password",
        ),
        const SizedBox(
          height: 24,
        ),
        MeroTextField(
          controller: TextEditingController(),
          type: TextFieldType.password,
          hintText: "Confirm Password",
        ),
        const SizedBox(
          height: 24,
        ),
        AuthButton(
            onTap: () {
              authController.changeAuthState(AuthState.resetPassword);
            },
            text: "Change Password"),
      ],
    );
  }
}
