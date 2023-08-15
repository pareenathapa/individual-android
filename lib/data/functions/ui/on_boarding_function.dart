import 'package:mero_discount/static/enum/onboarding.dart';

class OnBoardingFunction {
  getImage(OnBoardingStates state) {
    switch (state) {
      case OnBoardingStates.first:
        return "assets/images/first.png";
      case OnBoardingStates.second:
        return "assets/images/second.png";
      case OnBoardingStates.third:
        return "assets/images/third.png";
    }
  }

  getTitle(OnBoardingStates state) {
    switch (state) {
      case OnBoardingStates.first:
        return "Get your hands on some \nexciting offers in luxuries";
      case OnBoardingStates.second:
        return "Enhance your customer experience";
      case OnBoardingStates.third:
        return "Unlock the Happiness";
    }
  }

  getSubtitle(OnBoardingStates state) {
    switch (state) {
      case OnBoardingStates.first:
        return "We bring you the best deals and discounts in the luxuries. Whether you want it delivered to your door or want to visit such places, we have got you covered with the best deals.";
      case OnBoardingStates.second:
        return "Tired of looking around for the place that has all your needs? Sign up with Mero Discounts and get access to the best All-In-One shopping stops.";
      case OnBoardingStates.third:
        return "Delightful service is what we tend to provide our customers with. Our happiness depends on your happiness. Enjoy the luxuries, enjoy the deals.";
    }
  }
}

final OnBoardingFunction onBoardingFunction = OnBoardingFunction();
