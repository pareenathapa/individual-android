import 'package:flutter/material.dart';
import 'package:mero_discount/static/enum/auth.dart';
import 'package:mero_discount/view/auth/screens/forget_password.dart';
import 'package:mero_discount/view/auth/screens/otp.dart';
import 'package:mero_discount/view/auth/screens/reset_password.dart';
import 'package:mero_discount/view/auth/screens/sign_in.dart';
import 'package:mero_discount/view/auth/screens/sign_up.dart';

class AuthFunctions {
  getTitle(AuthState state) {
    switch (state) {
      case AuthState.signIn:
        return "Sign In";
      case AuthState.signUp:
        return "Sign Up";
      case AuthState.otp:
        return "OTP";
      case AuthState.forgetPassword:
        return "Forget password";
      case AuthState.resetPassword:
        return "Reset password";
    }
  }

  getSubtitle(AuthState state) {
    switch (state) {
      case AuthState.signIn:
        return "We are delighted to see you again";
      case AuthState.signUp:
        return "Sign up now to explore the exciting deals";
      case AuthState.otp:
        return "We have sent a code to you phone and email";
      case AuthState.forgetPassword:
        return "No Worries, we’ll send you reset instructions.";
      case AuthState.resetPassword:
        return "Must be at least 8 characters.";
    }
  }

  getTextFieldPrefix(TextFieldType type) {
    switch (type) {
      case TextFieldType.email:
        return "assets/icons/email.png";
      case TextFieldType.password:
        return "assets/icons/password.png";
      case TextFieldType.name:
        return "assets/icons/user.png";
      case TextFieldType.phone:
        return "assets/icons/phone.png";
      case TextFieldType.otp:
        return "null";
    }
  }

  getTextFieldHint(TextFieldType type) {
    switch (type) {
      case TextFieldType.email:
        return "Email/ Phone No.";
      case TextFieldType.password:
        return "Password";
      case TextFieldType.name:
        return "Full Name";
      case TextFieldType.phone:
        return "Phone No.";
      case TextFieldType.otp:
        return "OTP Code";
    }
  }

  Widget getAuthWidget(AuthState state) {
    switch (state) {
      case AuthState.signIn:
        return const SignIn();
      case AuthState.signUp:
        return const SignUp();
      case AuthState.otp:
        return const OTP();
      case AuthState.forgetPassword:
        return const ForgotPassword();
      case AuthState.resetPassword:
        return const ResetPassword();
    }
  }
}

final AuthFunctions authState = AuthFunctions();
