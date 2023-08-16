import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/controllers/auth_state_controller.dart';
import 'package:mero_discount/data/functions/ui/auth_function.dart';

class AuthBase extends StatefulWidget {
  const AuthBase({super.key});

  @override
  State<AuthBase> createState() => _AuthBaseState();
}

class _AuthBaseState extends State<AuthBase> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: authController,
      builder: (auth) => Scaffold(
        body: SizedBox(
          height: Get.height,
          width: Get.width,
          child: Stack(children: [
            Column(
              children: [
                Container(
                  width: Get.width,
                  height: Get.height * 0.5,
                  color: const Color(0xffFC4704),
                ),
                Container(
                    width: Get.width,
                    height: Get.height * 0.5,
                    color: Colors.white)
              ],
            ),
            NestedScrollView(
              controller: auth.scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: Get.height * 0.3,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(
                    title: SizedBox(
                      width: Get.width,
                      height: 56,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              authState.getTitle(auth.currentAuthState),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              authState.getSubtitle(auth.currentAuthState),
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xffFCDBCF),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    background: Image.asset(
                      "assets/images/pattern.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  backgroundColor: const Color(0xffFC4704),
                )
              ],
              body: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(32))),
                child: authState.getAuthWidget(
                  auth.currentAuthState,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
