import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/data/functions/ui/on_boarding_function.dart';
import 'package:mero_discount/static/enum/onboarding.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFC4704),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFC4704),
          actions: [
            GestureDetector(
              onTap: () {
                Get.offNamed("/home");
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Skip"),
              ),
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * 0.40 + 160,
              child: PageView(
                controller: _pageController,
                onPageChanged: (val) {
                  page = val;
                  setState(() {});
                },
                children: [
                  for (OnBoardingStates page in OnBoardingStates.values)
                    Column(
                      children: [
                        SizedBox(
                            width: Get.height * 0.40,
                            height: Get.height * 0.40,
                            child:
                                Image.asset(onBoardingFunction.getImage(page))),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: SizedBox(
                            height: 160,
                            child: Column(
                              children: [
                                Text(
                                  onBoardingFunction.getTitle(page),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  onBoardingFunction.getSubtitle(page),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 16, color: Color(0xffFCC9B5)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (OnBoardingStates pageIndicator
                      in OnBoardingStates.values)
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: 4,
                      width: pageIndicator.toInt == page ? 32 : 16,
                      decoration: BoxDecoration(
                          color: pageIndicator.toInt == page
                              ? const Color(0xffFCEDE8)
                              : const Color(0xffFCB69C),
                          borderRadius: BorderRadius.circular(16)),
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 54,
            ),
            GestureDetector(
              onTap: () {
                if (page < OnBoardingStates.values.length - 1) {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn);
                } else {
                  Get.offNamed("/home");
                }
              },
              child: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:
                        Border.all(width: 1, color: const Color(0xffFCB69C))),
                child: Center(
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                        color: Color(0xffFCF8F7), shape: BoxShape.circle),
                    child: Center(
                      child: SizedBox(
                          width: 24,
                          height: 24,
                          child: Image.asset("assets/icons/next.png")),
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
