import 'package:flutter/material.dart';
import '../../config/app_color.dart';
import '../../config/app_textstyle.dart';

showCustomSnackBar({
  @required BuildContext? context,
  @required String? message,
  bool? isError = false,
}) {
  final snackBar = SnackBar(
    duration: const Duration(seconds: 2),
    content: Container(
      padding: const EdgeInsets.only(top: 3, bottom: 3),
      child: Text(
        message!,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: AppTextStyle.regular.copyWith(
            color: isError! ? AppColors.redColor : AppColors.greenColor,
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
    ),
    backgroundColor: AppColors.primaryColor,
  );
  return ScaffoldMessenger.of(context!).showSnackBar(snackBar);
}
