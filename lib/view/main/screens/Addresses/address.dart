import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  int active = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCF8F7),
      body: SafeArea(
          child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_rounded)),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "My Address",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            for (int i = 0; i < 3; i++)
              GestureDetector(
                onTap: () {
                  setState(() {
                    active = i;
                  });
                },
                child: Container(
                  width: Get.width,
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.fromLTRB(8, 16, 16, 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: active == i
                              ? Color(0xffFCDBCF)
                              : Color(0xffE5E5E6)),
                      color: i == active ? Color(0xffFCEDE8) : Colors.white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text('Muthuu Swami Venu Gopala'),
                          Spacer(),
                          Text(
                            "Edit",
                            style: TextStyle(color: Color(0xff777F88)),
                          )
                        ]),
                        if (i == active)
                          Container(
                            width: 94,
                            height: 14,
                            margin: EdgeInsets.only(top: 4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.white,
                                border: Border.all(color: Color(0xffFC6D37))),
                            child: Center(
                              child: Text(
                                "Default Address",
                                style: TextStyle(
                                    fontSize: 10, color: Color(0xffFC4704)),
                              ),
                            ),
                          ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Prayag Marg, Mid-Baneshwor, Kathmandu, Bagmati Province",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "+977-9860000000",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )
                      ]),
                ),
              )
          ],
        ),
      )),
    );
  }
}
