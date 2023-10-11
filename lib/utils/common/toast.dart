import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

double toastIconSize = 30;
double toastHeight = 80;
double toastBorderRadius = 10;
double toastMessageFontSize = 13;
double toastTitleFontSize = 16;

class Toast {
  static successToast({@required String? message}) {
    MotionToast.success(
      title: const Text("Success"),
      description: Text(message!),
      iconSize: toastIconSize,
      height: toastHeight,
      width: Get.width - 15,
      borderRadius: toastBorderRadius,
      iconType: IconType.cupertino,
    ).show(Get.context!);
  }

  static warningToast({double? height, @required String? message}) {
    MotionToast.warning(
      title: const Text('Warning'),
      description: Text(message!),
      iconSize: toastIconSize,
      height: height ?? toastHeight,
      width: Get.width - 16,
      borderRadius: toastBorderRadius,
      iconType: IconType.cupertino,
    ).show(Get.context!);
  }

  static errorToast({@required String? message}) {
    MotionToast.error(
      title: const Text('Error'),
      description: Text(message!),
      iconSize: toastIconSize,
      height: toastHeight,
      width: Get.width - 15,
      borderRadius: toastBorderRadius,
      iconType: IconType.cupertino,
    ).show(Get.context!);
  }

  static infoToast({@required String? message, @required String? title}) {
    MotionToast.info(
      title: Text(title!),
      description: Text(message!),
      iconSize: toastIconSize,
      height: toastHeight,
      width: Get.width - 15,
      borderRadius: toastBorderRadius,
      iconType: IconType.cupertino,
    ).show(Get.context!);
  }

  static deleteToast({@required String? message}) {
    MotionToast.delete(
      title: const Text('Deleted'),
      description: Text(message!),
      iconSize: toastIconSize,
      height: toastHeight,
      width: Get.width - 15,
      borderRadius: toastBorderRadius,
      iconType: IconType.cupertino,
    ).show(Get.context!);
  }
}
