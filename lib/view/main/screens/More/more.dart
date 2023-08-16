import 'package:flutter/material.dart';
import 'package:get/get.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: const Color(0xffFCF8F7),
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 104,
                width: Get.width,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(8),
                  leading: Container(
                    width: 72,
                    height: 72,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffFC4704)),
                    child: const Center(
                      child: Text(
                        "SK",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  title: const Text(
                    "Salman Khan",
                    style: TextStyle(
                        color: Color(0xff16191D),
                        fontWeight: FontWeight.w700,
                        fontSize: 24),
                  ),
                  subtitle: const Column(
                    children: [
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mobile_friendly_rounded,
                            size: 12,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("9810479710")
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.mail_outline,
                            size: 12,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Text("saugatoff@gmail.com")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const OptionGroup(
                options: [
                  Option(
                    icon: Icons.person_add_alt_1_rounded,
                    title: "Invite Your Friends",
                    subtitle: "Share this app to your friends and relatives.",
                  ),
                  Divider(
                    height: 0,
                    color: Color(0xffE5E5E6),
                  ),
                  Option(
                    icon: Icons.house,
                    title: "About Us",
                    subtitle: "Discover the story behind us.",
                  ),
                  Divider(
                    height: 0,
                    color: Color(0xffE5E5E6),
                  ),
                  Option(
                    icon: Icons.phone,
                    title: "Contact Us",
                    subtitle: "We’re all ears! Reach out to us.",
                  ),
                  Divider(
                    height: 0,
                    color: Color(0xffE5E5E6),
                  ),
                  Option(
                    icon: Icons.thumb_up_alt_outlined,
                    title: "Follow Us",
                    subtitle:
                        "Stay in the loop! Follow us on our social media.",
                  ),
                ],
              ),
              const OptionGroup(options: [
                Option(
                  icon: Icons.private_connectivity_rounded,
                  title: "Privacy Policy",
                  subtitle:
                      "Your privacy matters! Dive into our privacy policy",
                ),
                Divider(
                  height: 0,
                  color: Color(0xffE5E5E6),
                ),
                Option(
                  icon: Icons.edit_document,
                  title: "Terms & Conditions",
                  subtitle: "Explore our terms & conditions.",
                ),
                Divider(
                  height: 0,
                  color: Color(0xffE5E5E6),
                ),
                Option(
                  icon: Icons.chat_bubble_outline_rounded,
                  title: "FAQ",
                  subtitle: "Got questions? We’ve got answers!",
                ),
              ]),
              const OptionGroup(options: [
                Option(
                  icon: Icons.star,
                  title: "Rate Us",
                  subtitle: "Share your experience with app.",
                ),
                Divider(
                  height: 0,
                  color: Color(0xffE5E5E6),
                ),
                Option(
                  icon: Icons.settings,
                  title: "Settings",
                  subtitle: "Take control and make the app truly yours!",
                ),
                Divider(
                  height: 0,
                  color: Color(0xffE5E5E6),
                ),
                Option(
                  icon: Icons.logout,
                  title: "Logout",
                  subtitle: "Logout from Mero Discounts",
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class OptionGroup extends StatelessWidget {
  const OptionGroup({super.key, required this.options});
  final List<Widget> options;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: options,
        ));
  }
}

class Option extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  const Option({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // decoration: BoxDecoration(
      //     border: Border(bottom: BorderSide(color: Color(0xffE5E5E6)))),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color(0xff16191D),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: Color(0xff5E656E)),
        ),
        trailing: const Icon(Icons.keyboard_arrow_right_rounded),
      ),
    );
  }
}
