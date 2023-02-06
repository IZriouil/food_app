import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/config/colors.constants.dart';
import 'package:food_app/widgets/most_popular_list.widget.dart';
import 'package:food_app/widgets/restaurants_list.widget.dart';
import 'package:food_app/widgets/search_bar.widget.dart';

import 'config/layout.constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGrayColor,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: kBlackColor.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, -5), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: kBlackColor,
            unselectedItemColor: kBlackColor.withOpacity(0.8),
            items: const [
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.list_bullet), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.bookmark), label: 'Favorites'),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SearchBarWidget(),
                SizedBox(height: kDefaultPadding),
                RestaurantsListWidget(),
                Expanded(child: MostPopularListWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
