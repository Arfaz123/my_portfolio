import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:personal_web/config/app_color.dart';
import 'package:personal_web/config/image_path.dart';

void showLoadingDialog() {
  Future.delayed(const Duration(milliseconds: 0), () {
    showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (context) {
          return Center(
            child: Material(
              color: AppColors.transparentColor,
              child: Container(
                height: 100,
                width: 100,
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Lottie.asset(ImagePath.loadLogo2,
                        height: 70, width: 70)),
              ),
            ),
          );
        });
  });
}

void hideLoadingDialog() {
  Get.back();
}

void kDebugPrint(data) {
  if (kDebugMode) {
    print(data);
  }
}
