import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/models/restaurant_category.model.dart';

import '../config/colors.constants.dart';
import '../config/layout.constants.dart';

class RestaurantIndicatorWidget extends StatelessWidget {
  final bool active;
  final RestaurantCategoryModel category;
  const RestaurantIndicatorWidget({super.key, required this.category, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 90,
        height: 85,
        clipBehavior: Clip.none,
        padding: const EdgeInsets.all(kDefaultPadding * 0.5),
        margin: const EdgeInsets.only(right: kDefaultPadding),
        decoration: BoxDecoration(
          color: active ? kPrimaryColor : kWhiteColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: IntrinsicHeight(
            child: Column(children: [
              SvgPicture.asset("assets/images/categories/${category.id}.svg",
                  colorFilter: ColorFilter.mode(active ? kWhiteColor : kBlackColor, BlendMode.srcIn),
                  width: 42,
                  height: 42),
              if (active) ...[
                const SizedBox(height: kDefaultPadding * 0.5),
                Text(
                  category.label,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(color: kWhiteColor, fontSize: 10),
                ),
              ]
            ]),
          ),
        ));
  }
}
