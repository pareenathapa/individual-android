import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/controllers/main_state_controller.dart';
import 'package:mero_discount/data/functions/ui/main_function.dart';
import 'package:mero_discount/static/enum/home.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
      init: mainController,
      builder: (main) => Scaffold(
        backgroundColor: const Color(0xffFCF8F7),
        bottomNavigationBar: Container(
          color: Colors.white,
          width: Get.width,
          height: 78,
          child: SizedBox(
            height: 78,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (MainStates state in MainStates.values)
                  GestureDetector(
                    onTap: () {
                      mainController.changeMainState(state);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: 28,
                            height: 28,
                            child: Image.asset(
                                mainFunctions.getBottomBarItems(state))),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          state.name.capitalizeFirst!,
                          style: TextStyle(
                              color: state == main.currentMainState
                                  ? const Color(0xffFC4704)
                                  : const Color(0xff93999F)),
                        )
                      ],
                    ),
                  )
              ],
            ),
          ),
        ),
        body: mainFunctions.getMainWidget(main.currentMainState),
      ),
    );
  }
}
