import 'package:flutter/material.dart';
import 'package:food_app/config/colors.constants.dart';
import 'package:food_app/config/layout.constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: const [
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
