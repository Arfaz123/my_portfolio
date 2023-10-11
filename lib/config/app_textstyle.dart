// ignore_for_file:   ant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextStyle {
  static TextStyle regular = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle bold = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle semiBold = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle dashBoardCardText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 13,
    color: AppColors.namazTimeSubtitle,
    fontWeight: FontWeight.w600,
  );

  static TextStyle medium = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle namazTimingTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.namazTimeSubtitle,
    height: 22 / 15,
  );

  static TextStyle pastEventTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.namazTimeSubtitle.withOpacity(0.5),
    height: 22 / 15,
  );

  static TextStyle namazTimingSubTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.namazTimeSubtitle,
    height: 16 / 12,
  );
  static TextStyle selectedTracker = TextStyle(
    fontFamily: "Manrope",
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.secondPrimaryColor,
    height: 22 / 15,
  );
  static TextStyle selectedTrackerSubTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.secondPrimaryColor,
    height: 16 / 12,
  );
  static TextStyle pastNamazTimingSubTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.namazTimeSubtitle.withOpacity(0.5),
    height: 16 / 12,
  );

  static TextStyle MosqueTimingSubTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
    height: 22 / 14,
  );

  static TextStyle appbarTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.secondPrimaryColor,
    height: 23 / 17,
  );

  static TextStyle appbarSubTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.shadowGreyDarkColor,
    height: 16 / 12,
  );
  static TextStyle counterText = TextStyle(
    fontFamily: "Marmelad",
    fontSize: 67,
    fontWeight: FontWeight.w400,
    color: AppColors.secondPrimaryColor,
  );

  static TextStyle newCounterText = TextStyle(
    fontFamily: "Poppins",
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.secondPrimaryColor,
    height: 23 / 15,
  );

  static TextStyle counterCardText = TextStyle(
    fontFamily: "Marmelad",
    fontSize: 21,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimaryColor,
  );

  static TextStyle qazaPrayersCounterTotal = TextStyle(
    fontFamily: "Marmelad",
    fontSize: 30,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
  );
  static TextStyle rozaCounterText = TextStyle(
    fontFamily: "Marmelad",
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.secondPrimaryColor,
  );
  static TextStyle calendarSelectedText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.secondPrimaryColor,
  );
  static TextStyle calendarUnselectedText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 17,
    fontWeight: FontWeight.w600,
    color: AppColors.calendarTextColor,
  );
  static TextStyle calendarHeader = TextStyle(
    fontFamily: "Manrope",
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.calendarTextColor,
  );

  static TextStyle tabSelectedText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.primaryColor,
  );
  static TextStyle tabUnselectedText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.lightBlack,
  );
  static TextStyle eventDescriptionText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.lightBlack,
  );
  static TextStyle pastDescriptionText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.lightBlack.withOpacity(0.4),
  );
  static TextStyle eventActiveStatus = TextStyle(
    color: AppColors.greenColor,
    fontSize: 14,
    fontFamily: "Manrope",
    fontWeight: FontWeight.w700,
  );
  static TextStyle eventInactiveStatus = TextStyle(
    color: AppColors.redColor,
    fontSize: 14,
    fontFamily: "Manrope",
    fontWeight: FontWeight.w700,
  );
  static TextStyle pastEventStatus = TextStyle(
    color: AppColors.lightBlack.withOpacity(0.6),
    fontSize: 14,
    fontFamily: "Manrope",
    fontWeight: FontWeight.w700,
  );
  static TextStyle eventLocation = TextStyle(
    color: AppColors.namazTimeSubtitle,
    fontSize: 12,
    fontStyle: FontStyle.italic,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );
  static TextStyle pastEventLocation = TextStyle(
    color: AppColors.namazTimeSubtitle.withOpacity(0.5),
    fontSize: 12,
    fontStyle: FontStyle.italic,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );
  static TextStyle eventLink = TextStyle(
    color: AppColors.secondPrimaryColor,
    fontSize: 15,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
  );

  static TextStyle carouselText1 = TextStyle(
    fontFamily: "Manrope",
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.namazTimeSubtitle,
    height: 22 / 15,
  );

  static TextStyle carouselText2 = TextStyle(
    fontFamily: "Amiri",
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.namazTimeSubtitle,
    height: 22 / 15,
  );

  static TextStyle carouselText3 = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.namazTimeSubtitle,
    height: 22 / 15,
  );
  static TextStyle counterHintText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.greyLightColor.withOpacity(0.3),
    height: 22 / 15,
  );
  static TextStyle counterTextStyle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.namazTimeSubtitle,
  );
  static TextStyle calendarContainer = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.secondPrimaryColor,
    height: 22 / 14,
  );

  static TextStyle qazaTotalCount = TextStyle(
    fontFamily: "Marmelad",
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
  static TextStyle qazaTotalText = TextStyle(
    fontFamily: "Marmelad",
    fontSize: 10,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle rozaTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: AppColors.secondPrimaryColor,
  );
  static TextStyle rozaSubTitle = TextStyle(
    fontFamily: "Manrope",
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: AppColors.secondPrimaryColor,
  );
  static TextStyle counterHistory = TextStyle(
    fontFamily: "Manrope",
    fontSize: 12.91,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
    height: 18 / 12.916129112243652,
  );
  static TextStyle counterSave = TextStyle(
    fontFamily: "Manrope",
    fontSize: 12.91,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
    height: 18 / 12.916129112243652,
  );
  static TextStyle recitingText = TextStyle(
    fontFamily: "Manrope",
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.namazTimeSubtitle,
    height: 21 / 20,
  );

  static TextStyle qiblacontainer = TextStyle(
    fontFamily: "Manrope",
    fontSize: 13,
    fontWeight: FontWeight.w700,
    color: AppColors.secondPrimaryColor,
  );
  static TextStyle incrementButton = TextStyle(
    fontFamily: "Manrope",
    fontSize: 36,
    fontWeight: FontWeight.w600,
    color: AppColors.secondPrimaryColor,
    height: 18 / 12.916129112243652,
  );
  static TextStyle decrementButton = TextStyle(
    fontFamily: "Manrope",
    fontSize: 36,
    fontWeight: FontWeight.w600,
    color: AppColors.redColor,
    height: 18 / 12.916129112243652,
  );
  static TextStyle counterDescription = TextStyle(
    fontFamily: "Manrope",
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.lightBlack,
  );
}
