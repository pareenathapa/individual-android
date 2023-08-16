import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_banner.dart';
import 'package:mero_discount/view/main/widgets/mero_bar.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_deal.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_feature.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_hunger.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_near.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_promo.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/mero_promotion.dart';
import 'package:mero_discount/view/main/widgets/mero_search.dart';
import 'package:mero_discount/view/main/screens/Home/widgets/update_profile.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: Get.width,
        height: Get.height,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: MeroBar(),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: MeroSearch(),
              ),
              SizedBox(
                height: 16,
              ),
              MeroHunger(),
              SizedBox(
                height: 16,
              ),
              MeroBanner(),
              SizedBox(
                height: 24,
              ),
              MeroNear(),
              SizedBox(
                height: 24,
              ),
              MeroDeal(),
              SizedBox(
                height: 24,
              ),
              UpdateProfile(),
              SizedBox(
                height: 24,
              ),
              MeroFeature(),
              SizedBox(
                height: 24,
              ),
              Promotion(),
              SizedBox(
                height: 24,
              ),
              MeroPromo()
            ],
          ),
        ),
      ),
    );
  }
}
