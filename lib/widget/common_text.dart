import 'package:flutter/material.dart';
import '../config/app_color.dart';
import '../config/app_textstyle.dart';

Widget titleText({
  title,
  textColor,
  double? textSize,
  fontWeight,
  double? leftPadding,
  double? topPadding,
  double? rightPadding,
  double? bottomPadding,
  maxLines,
  onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      padding: EdgeInsets.fromLTRB(leftPadding ?? 16, topPadding ?? 0,
          rightPadding ?? 16, bottomPadding ?? 0),
      child: Text(title ?? "",
          maxLines: maxLines ?? 1,
          style: AppTextStyle.regular.copyWith(
              color: textColor ?? AppColors.blackColor,
              fontSize: textSize ?? 18,
              fontWeight: fontWeight ?? FontWeight.w500)),
    ),
  );
}

Widget descriptionText({
  title,
  textColor,
  double? textSize,
  fontWeight,
  double? leftPadding,
  double? topPadding,
  double? rightPadding,
  double? bottomPadding,
  maxLines,
  textAlign,
  onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      padding: EdgeInsets.fromLTRB(leftPadding ?? 16.0, topPadding ?? 0,
          rightPadding ?? 16, bottomPadding ?? 0),
      child: Text(title,
          maxLines: maxLines ?? 1,
          textAlign: textAlign ?? TextAlign.start,
          style: AppTextStyle.regular.copyWith(
              color: textColor ?? AppColors.greyColor,
              fontSize: textSize ?? 16,
              fontWeight: fontWeight ?? FontWeight.w500)),
    ),
  );
}
