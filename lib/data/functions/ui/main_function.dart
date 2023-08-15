import 'package:mero_discount/data/controllers/main_state_controller.dart';
import 'package:mero_discount/static/enum/home.dart';
import 'package:mero_discount/view/main/screens/Account/account.dart';
import 'package:mero_discount/view/main/screens/Basket/basket.dart';
import 'package:mero_discount/view/main/screens/Deals/deals.dart';
import 'package:mero_discount/view/main/screens/Home/home.dart';
import 'package:mero_discount/view/main/screens/More/more.dart';

class MainFunctions {
  getBottomBarItems(MainStates state) {
    switch (state) {
      case MainStates.home:
        if (state == mainController.currentMainState) {
          return "assets/icons/home-solid.png";
        } else {
          return "assets/icons/home.png";
        }
      case MainStates.deals:
        if (state == mainController.currentMainState) {
          return "assets/icons/deals-solid.png";
        } else {
          return "assets/icons/deals.png";
        }
      case MainStates.basket:
        if (state == mainController.currentMainState) {
          return "assets/icons/basket-solid.png";
        } else {
          return "assets/icons/basket.png";
        }
      case MainStates.account:
        if (state == mainController.currentMainState) {
          return "assets/icons/account-solid.png";
        } else {
          return "assets/icons/account.png";
        }
      case MainStates.more:
        if (state == mainController.currentMainState) {
          return "assets/icons/more-solid.png";
        } else {
          return "assets/icons/more.png";
        }
    }
  }

  getMainWidget(MainStates state) {
    switch (state) {
      case MainStates.home:
        return const Home();
      case MainStates.deals:
        return const Deals();
      case MainStates.basket:
        return const Basket();
      case MainStates.account:
        return Account();
      case MainStates.more:
        return const More();
    }
  }
}

final MainFunctions mainFunctions = MainFunctions();
