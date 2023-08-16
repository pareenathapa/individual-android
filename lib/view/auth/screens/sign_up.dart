import 'package:flutter/material.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/data/functions/api/auth/auth.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:mero_discount/view/auth/widgets/auth_button.dart';
import 'package:mero_discount/view/auth/widgets/auto_auth.dart';
import 'package:mero_discount/view/auth/widgets/mero_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  bool loading = false;

  bool showError = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 36,
          ),
          MeroTextField(
            controller: name,
            type: TextFieldType.name,
          ),
          const SizedBox(
            height: 24,
          ),
          MeroTextField(
            controller: email,
            type: TextFieldType.email,
            hintText: "Email",
          ),
          const SizedBox(
            height: 24,
          ),
          MeroTextField(
            controller: phone,
            type: TextFieldType.phone,
          ),
          const SizedBox(
            height: 24,
          ),
          MeroTextField(
            controller: password,
            type: TextFieldType.password,
          ),
          const SizedBox(
            height: 24,
          ),
          MeroTextField(
            controller: confirmPassword,
            type: TextFieldType.password,
            hintText: "Confirm Password",
          ),
          // Row(
          //   children: [
          //     Icon(
          //       Icons.info,
          //       size: 12,
          //     ),
          //     SizedBox(
          //       width: 4,
          //     ),
          //     Text(
          //       "Password musr contain 8 characters.",
          //       style: TextStyle(fontSize: 12, color: Color(0xffff3729)),
          //     )
          //   ],
          // ),
          const SizedBox(
            height: 8,
          ),
          const SizedBox(
            height: 24,
          ),
          AuthButton(
              onTap: () async {
                await authApi.signUp(
                    name: name.text,
                    email: email.text,
                    phone: phone.text,
                    passsword: password.text,
                    confirmPassword: confirmPassword.text);
                // setState(() {
                //   loading = false;
                // });
              },
              text: "Sign up"),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Already have an account?",
                style: TextStyle(color: Color(0xff93999F)),
              ),
              const SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {
                  authController.changeAuthState(AuthState.signIn);
                },
                child: const Text(
                  "Sign In",
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
      ),
    );
  }
}
