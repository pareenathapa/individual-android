import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeroHunger extends StatelessWidget {
  const MeroHunger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "Hungry but unsure?",
            style: TextStyle(
                fontWeight: FontWeight.w700, color: Color(0xff16191D)),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: Get.width,
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    children: [
                      HungerChild(
                          image: "assets/foods/burger.png", label: "Burger"),
                      HungerChild(
                          image: "assets/foods/biryani.png", label: "Biryani"),
                    ],
                  ),
                  Column(
                    children: [
                      HungerChild(
                          image: "assets/foods/roti.png", label: "Roti"),
                      HungerChild(
                          image: "assets/foods/pasta.png", label: "Pasta"),
                    ],
                  ),
                  Column(
                    children: [
                      HungerChild(
                          image: "assets/foods/chowmin.png", label: "Chowmin"),
                      HungerChild(
                          image: "assets/foods/cake.png", label: "Cake"),
                    ],
                  ),
                  Column(
                    children: [
                      HungerChild(
                          image: "assets/foods/burger.png", label: "Burger"),
                      HungerChild(
                          image: "assets/foods/biryani.png", label: "Biryani"),
                    ],
                  ),
                  Column(
                    children: [
                      HungerChild(
                          image: "assets/foods/pizza.png", label: "Pizza"),
                      HungerChild(
                          image: "assets/foods/aluParatha.png",
                          label: "Alu Paratha"),
                    ],
                  )
                ],
              )),
        )
      ],
    );
  }
}

class HungerChild extends StatelessWidget {
  final String image;
  final String label;
  const HungerChild({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
              width: 80,
              height: 80,
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              )),
          const SizedBox(
            height: 4,
          ),
          Text(
            label,
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xff5E656E)),
          )
        ],
      ),
    );
  }
}
