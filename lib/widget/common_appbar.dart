import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_web/main.dart';
import 'package:personal_web/utils/common/coustom_package_info.dart';
import '../config/app_textstyle.dart';

Widget commonAppbar({required String title, Function? onBackButtonTap,bool versionshow=true}) {
  return Row(
    children: [
      size.widthSpace(15),
      InkWell(
          onTap: () => onBackButtonTap != null ? onBackButtonTap() : Get.back(),
          child: const Icon(Icons.arrow_back, color: Colors.white)),
      size.widthSpace(9),
      Text(
        title,
        style: AppTextStyle.appbarTitle,
        textAlign: TextAlign.left,
      ),
      versionshow==true?
      Spacer():Container(),
      versionshow==true?
      Text(
        "${AppPackageInfo().getVersion()} + ${AppPackageInfo().getBuildNumber()}",
        style: AppTextStyle.appbarTitle,
        textAlign: TextAlign.left,
      ) : Container(),

      versionshow==true?
      size.widthSpace(9):Container(),
    ],
  );
}
