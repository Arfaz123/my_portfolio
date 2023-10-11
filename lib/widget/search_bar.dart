import 'package:flutter/material.dart';
import '../config/app_color.dart';
import '../config/app_textstyle.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 382,
      child: TextField(
        cursorColor: AppColors.mediumBlackColor,
        decoration: InputDecoration(
          hintText: 'Search',
          suffixIcon: Padding(
            padding:
                const EdgeInsets.only(right: 5, top: 3, bottom: 3, left: 5),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.search,
                color: AppColors.secondPrimaryColor,
                size: 20,
              ),
            ),
          ),
          hintStyle: AppTextStyle.medium
              .copyWith(fontSize: 12, color: AppColors.lightGreyColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(25.7),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );
  }
}
