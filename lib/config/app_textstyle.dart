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

  static TextStyle medium = TextStyle(
    fontFamily: "Manrope",
    fontSize: 14,
    color: AppColors.textPrimaryColor,
    fontWeight: FontWeight.w400,
  );
}
