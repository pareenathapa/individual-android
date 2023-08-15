import 'package:get/get.dart';
import 'package:mero_discount/static/enum/home.dart';

class MainController extends GetxController {
  MainStates currentMainState = MainStates.home;
  changeMainState(MainStates state) {
    currentMainState = state;
    update();
  }
}

final MainController mainController = Get.put(MainController());
