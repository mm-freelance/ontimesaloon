import 'package:flutter/material.dart';

import 'package:salon/utils/colors.dart';
import 'package:salon/widgets/home_barbar_item.dart';

import 'package:salon/widgets/home_luxury_item.dart';
import 'package:salon/widgets/home_recommended_item.dart';
import 'package:salon/widgets/home_salon_items.dart';
import 'package:salon/widgets/home_service_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.appbackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRect(
                child: Container(
                  width: double.infinity,
                  height: 270,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('assets/onboarding1.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 22),
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(50))),
                                child: const Icon(
                                  Icons.menu_rounded,
                                  size: 26,
                                  color: Colors.white,
                                )),
                            Container(
                                height: 36,
                                width: 36,
                                decoration: const BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadiusDirectional.all(
                                        Radius.circular(50))),
                                child: const Icon(
                                  Icons.filter_list_alt,
                                  size: 26,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        margin: const EdgeInsets.symmetric(horizontal: 36),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Salon, Services, Barber',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                            Icon(Icons.search,
                                color: AppColors.appbackgroundColor)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Barbar(),
              const Salon(),
              const Services(),
              const RecommenedSection(),
              const LuxurySection(),
            ],
          ),
        ),
      ),
    );
  }
}
