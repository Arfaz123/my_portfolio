import 'package:flutter/material.dart';
import 'package:personal_web/main.dart';
import '../config/app_color.dart';
import '../config/app_textstyle.dart';

Widget buttonView({
  String? title,
  Color? backGroundColor,
  Color? textColor,
  double? height,
  double? width,
  BorderRadius? borderRadius,
  double? rightPadding,
  double? leftPadding,
  double? topPadding,
  double? bottomPadding,
  double? rightMargin,
  double? leftMargin,
  double? topMargin,
  double? bottomMargin,
  double? textSize,
  bool borderColor = false,
  Function()? onPressed,
  Widget? textSpan,
  Gradient? gradient,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      height: height ?? size.width(53),
      width: width ?? size.width(357),
      alignment: Alignment.center,
      padding: EdgeInsets.only(
          left: leftPadding ?? 0,
          right: rightPadding ?? 0,
          top: topPadding ?? 0,
          bottom: bottomPadding ?? 0),
      margin: EdgeInsets.only(
          left: leftMargin ?? 0,
          right: rightMargin ?? 0,
          bottom: bottomMargin ?? 0,
          top: topMargin ?? 0),
      decoration: BoxDecoration(
        color: backGroundColor ?? AppColors.primaryColor,
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        border: Border.all(
          color:
              borderColor ? AppColors.primaryColor : AppColors.transparentColor,
          width: 1,
        ),
        gradient: gradient,
      ),
      child: textSpan ??
          Text(
            "$title",
            textAlign: TextAlign.center,
            style: AppTextStyle.semiBold.copyWith(
                fontSize: textSize ?? 18,
                color: textColor ?? AppColors.secondPrimaryColor,
                fontWeight: FontWeight.w600),
          ),
    ),
  );
}
