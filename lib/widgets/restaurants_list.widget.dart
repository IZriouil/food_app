import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_app/config/colors.constants.dart';
import 'package:food_app/config/layout.constants.dart';
import 'package:food_app/config/mock.constants.dart';
import 'package:food_app/widgets/restaurant_indicator.widget.dart';

import '../config/scroll_config.dart';

class RestaurantsListWidget extends StatelessWidget {
  const RestaurantsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Restaurants',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: kBlackColor, fontWeight: FontWeight.w600)),
          const SizedBox(height: kDefaultPadding * 0.5),
          ScrollConfiguration(
            behavior: WindowsScrollBehaviour(),
            child: SingleChildScrollView(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                    children: kRestaurentCategories
                        .map((category) => RestaurantIndicatorWidget(
                              category: category,
                              active: kRestaurentCategories.first == category,
                            ))
                        .toList())),
          )
        ],
      ),
    );
  }
}
