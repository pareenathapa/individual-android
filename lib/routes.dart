import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/auth/base.dart';
import 'package:mero_discount/view/main/main.dart';
import 'package:mero_discount/view/main/screens/Addresses/address.dart';
import 'package:mero_discount/view/main/screens/Basket/basket.dart';
import 'package:mero_discount/view/main/screens/Checkout/checkout.dart';
import 'package:mero_discount/view/main/screens/Payment/payment.dart';
import 'package:mero_discount/view/main/screens/Track/track.dart';
import 'package:mero_discount/view/main/screens/Vendor/vendor.dart';
import 'package:mero_discount/view/onboarding/onboarding.dart';
import 'package:mero_discount/view/onboarding/splashscreen.dart';

appRoutes() => [
      MeroPage(
          name: "/",
          screen: const SplashScreen(),
          transition: Transition.fadeIn),
      MeroPage(
          name: "/onBoard",
          screen: const OnBoardingScreen(),
          transition: Transition.fadeIn),
      MeroPage(
          name: "/auth",
          screen: const AuthBase(),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/home",
          screen: const Main(),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/vendor",
          screen: const Vendor(),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/basket",
          screen: const Basket(
            back: true,
          ),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/checkout",
          screen: Checkout(),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/payment",
          screen: const Paymnet(),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/track",
          screen: const TrackMyOrder(),
          transition: Transition.rightToLeft),
      MeroPage(
          name: "/address",
          screen: const Address(),
          transition: Transition.rightToLeft)
    ];

GetPage MeroPage(
        {required String name,
        required Widget screen,
        required Transition transition}) =>
    GetPage(
        name: name,
        page: () => screen,
        curve: Curves.fastOutSlowIn,
        transitionDuration: const Duration(milliseconds: 1000),
        transition: transition);
