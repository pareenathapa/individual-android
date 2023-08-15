import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/static/enum/auth.dart';

class AuthController extends GetxController {
  AuthState currentAuthState = AuthState.signIn;
  ScrollController scrollController = ScrollController();
  String? token;
  scrollToTop() {
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linearToEaseOut);
  }

  changeAuthState(AuthState state) {
    currentAuthState = state;
    scrollToTop();
    update();
  }

  updateToken(String newToken) {
    token = newToken;
    update();
  }
}

final AuthController authController = Get.put(AuthController());
