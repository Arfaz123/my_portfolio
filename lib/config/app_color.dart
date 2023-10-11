// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:masjid/controllers/theme_controller/theme_controller.dart';

class AppColors extends GetxService {
  ///change based on theme
  static Color primaryColor = const Color(0xFF00856F);
  static Color secondPrimaryColor = const Color(0xFFFFFFFF);
  static Color textPrimaryColor = const Color(0xFF000000);

  ///in use
  static Color blackColor = const Color(0xFF000000);
  static Color lightGreyColor = const Color(0xffB7B7B7);
  static Color greyColor = const Color(0xff808080);
  static Color redColor = const Color(0xffE10000);
  static Color greenColor = const Color(0xff23BD16);
  static Color transparentColor = Colors.transparent;

  ///not in use
  static Color c1 = const Color(0xFF917BEA);
  static Color c2 = const Color(0xFF75ACD8);
  static Color c3 = const Color(0xFFF27F33);
  static Color c4 = const Color(0xFFE57D91);
  static Color c5 = const Color(0xFFECA928);
  static Color mediumBlackColor = const Color(0xFF0F0F0F);
  static Color whiteColor = const Color(0xFFFFFFFF);

  // static Color lightWhite = const Color(0xFFDEF2FF);
  // static Color primary2Color = const Color(0xFF00856F);
  // static Color lightPrimaryColor = const Color(0xFF04AC84);
  // static Color shadowGreyDarkColor = const Color(0xffF5F5F5);
  // static Color tabBackgroundColor = const Color(0xFF7FC2B7);
  // static Color lightColor = const Color(0xFFA5C9CA);
  // static Color removeIcon = const Color(0xFFFF5B6D);
  // static Color removeIconBorder = const Color(0xFFFFF0F2);
  // static Color decrementCounterColor = const Color(0xFFEAEAEA);
  // static Color darkGreyColor = const Color(0xFF616161);
  // static Color dialogBackground = Colors.white10;
  // static Color namazTimeSubtitle = const Color(0xff240046);
  // static Color calendarTextColor = const Color(0xff131A29);
  // static Color eventLocation = const Color(0xffFFF8E1);
  // static Color borderGreyColor = const Color(0xFFE0E0E0);
  // static Color greyLightColor = const Color(0xFF595959);
  // static Color lightBlack = const Color(0xFF525A66);
  // static Color blueColor = Colors.blue;
  // static Color mediumGreyColor = const Color(0xffD6D6D6);
  // static Color shadowGreyColor = const Color(0xffF2F2F2);
  // static Color lightRedColor = Colors.redAccent;
  // static Color borderColor = const Color(0xFFC0C0C0);
  // static Color counterDarkMode = const Color(0xff273B69);
  // static Color greyTextColor = const Color(0xFF595959);
  // static Color greyTColor = const Color(0xFF595959);
  // static Color dividerColor = const Color(0xFF484848);

  /*void updateColors(ThemeModeOption selectedTheme) {
    if (selectedTheme == ThemeModeOption.light) {
      primaryColor = const Color(0xFF00856F);
      lightPrimaryColor = const Color(0xFF00856F);
      secondPrimaryColor = const Color(0xFFFFFFFF);
      textPrimaryColor = const Color(0xFF000000);
    } else {
      primaryColor = const Color(0xFF000000);
      lightPrimaryColor = const Color(0xFF04AC84);
      secondPrimaryColor = const Color(0xFF272727);
      textPrimaryColor = const Color(0xFFFFFFFF);
    }
  }*/

  static ThemeData buildLightTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      backgroundColor: Colors.white,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData buildDarkTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      primaryColor: AppColors.primaryColor,
      backgroundColor: Colors.grey[800],
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: Color(0XFF15101F)),
      dialogBackgroundColor: const Color(0XFF15101F),
      timePickerTheme:
          const TimePickerThemeData(backgroundColor: Color(0XFF15101F)),
      scaffoldBackgroundColor: const Color(0XFF0E0A12),
      cardColor: const Color(0XFF15101F),
    );
  }
}
