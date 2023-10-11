import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/app_color.dart';
import '../config/app_textstyle.dart';

Widget dropdownView({
  List<dynamic>? dataList,
  String? hintText,
  Function(dynamic)? onChange,
  String? value,
  double? rightPadding,
  double? leftPadding,
  double? topPadding,
  double? bottomPadding,
  String? labelText,
}) {
  return Container(
    padding: EdgeInsets.only(
        left: leftPadding ?? 0,
        right: rightPadding ?? 0,
        top: topPadding ?? 15,
        bottom: bottomPadding ?? 0),
    child: DropdownButtonFormField(
      style: AppTextStyle.regular,
      elevation: 0,
      isExpanded: true,
      decoration: InputDecoration(
        hintText: hintText ?? "Select Any Item",
        filled: true,
        focusColor: Colors.grey.withOpacity(0.1),
        hintStyle: AppTextStyle.regular.copyWith(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        alignLabelWithHint: false,
        labelText: labelText ?? "",
        labelStyle: AppTextStyle.regular.copyWith(fontSize: 14),
        contentPadding: EdgeInsets.fromLTRB(
          leftPadding ?? 0,
          topPadding ?? 0,
          rightPadding ?? 0,
          bottomPadding ?? 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.transparentColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.transparentColor,
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.transparentColor,
            width: 1,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.transparentColor,
            width: 1,
          ),
        ),
      ),
      items: dataList!.map((e) {
        return DropdownMenuItem(
            value: e,
            child: Row(
              children: [
                SizedBox(width: leftPadding != null ? 0 : 15),
                Text(
                  e.toString().replaceAll("-", " ").capitalize!,
                  style: AppTextStyle.regular.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: AppColors.secondPrimaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ));
      }).toList(),
      hint: Row(
        children: [
          SizedBox(width: leftPadding != null ? 0 : 15),
          Text(
            hintText!,
            style: AppTextStyle.regular.copyWith(
                fontSize: 14, color: AppColors.lightGreyColor.withOpacity(0.5)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      icon: const Row(
        children: [
          Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),
      validator: (value) => value == null ? 'Field Required' : null,
      value: value,
      onChanged: onChange,
    ),
  );
}
