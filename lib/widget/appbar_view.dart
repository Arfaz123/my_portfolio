import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_web/config/app_color.dart';
import 'package:personal_web/config/app_textstyle.dart';
import 'package:personal_web/main.dart';

// String toTitleCase(String s) => s.replaceAll(RegExp(' +'), ' ').split(' ').map((str) => '${str[0].toUpperCase()}${str.substring(1).toLowerCase()}').join(' ');

AppBar appbarView({
  String? title,
  Color? titleColor,
  double? titleSize,
  String? titleImg,
  Color? titleImgColor,
  String? actionText,
  String? bootImg,
  bool iconBack = false,
  bool isLeading = false,
  bool isDrawer = false,
  bool isSearch = false,
  PreferredSize? bottom,
  bool isLogo = false,
  Function()? onTapAction,
  Function()? onPressLeading,
  bool isActionWidget = true,
  Widget? actionWidget,
  double? elevation,
  Widget? leadingIconWidget,
  bool leadingIcon = false,
  bool isImage = false,
  bool centerTitle = false,
  Image? titleImage,
}) {
  // var text = title!.replaceAll('-', ' ').capitalize!;
  // String lastChar = text.substring(text.length - 1);
  // String result = text.replaceRange(text.length, text.length, lastChar);
  return AppBar(
    elevation: elevation ?? 0,
    backgroundColor: AppColors.transparentColor,
    toolbarHeight: size.height(100),
    leadingWidth: isLeading && iconBack ? 35 : 0,
    bottom: bottom,
    title: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        isImage
            ? Container(
                padding: const EdgeInsets.all(5.0),
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 9,
                        offset: const Offset(5, 5))
                  ],
                  color: titleImgColor ?? AppColors.c1.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                ),
                child: Image.asset(titleImg!, color: AppColors.blackColor),
              )
            : const SizedBox(),
        Expanded(
          child: Text(
            title ?? " ",
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.bold.copyWith(fontSize: titleSize ?? 20),
          ),
        ),
      ],
    ),
    leading: isLeading
        ? IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.keyboard_arrow_left_sharp),
            iconSize: 40,
            color: AppColors.blackColor,
          )
        : Container(),
    centerTitle: centerTitle,

  );
}
