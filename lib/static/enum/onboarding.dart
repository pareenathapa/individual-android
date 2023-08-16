enum OnBoardingStates { first, second, third }

extension Utils on OnBoardingStates {
  int get toInt {
    switch (this) {
      case OnBoardingStates.first:
        return 0;
      case OnBoardingStates.second:
        return 1;
      case OnBoardingStates.third:
        return 2;
    }
  }
}
