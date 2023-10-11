import 'package:flutter/material.dart';
import '../config/app_color.dart';

Widget optionViewButton(
    {Function()? onTap, double? borderRadius, String? icon, double? iconSize}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(borderRadius ?? 7)),
    ),
  );
}
