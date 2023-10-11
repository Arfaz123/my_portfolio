import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../config/app_color.dart';
import '../config/app_textstyle.dart';
import '../main.dart';

Widget textView({
  BorderRadius? borderRadius,
  @required String? hintText,
  @required TextEditingController? controller,
  Widget? suffix,
  Widget? prefix,
  bool obscureText = false,
  Color? textFieldBackgroundColor,
  int maxLine = 1,
  List<TextInputFormatter>? textInputFormatter,
  bool isAadharNumValidator = false,
  bool enable = true,
  TextInputType? textInputType,
  bool isReadOnly = false,
  Function()? onPressed,
  Function()? onTapped,
  validator,
  FocusNode? focusNode,
  bool needValidation = false,
  int maxLength = 1000,
  Color? fieldColor,
  Function(String)? onChange,
  onSubmitted,
  Color? fillColor,
  Color? hintColor,
  double? containerHeight,
  double? containerWidth,
  BorderRadius? borderRRadius,
  Border? border,
}) {
  return GestureDetector(
    onTap: onTapped,
    child: Container(
      height: containerHeight ?? size.height(48),
      width: containerWidth ?? size.width(393),
      decoration: BoxDecoration(
          borderRadius: borderRRadius ?? BorderRadius.circular(10),
          border: border ?? Border.all(color: AppColors.primaryColor)),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        inputFormatters: textInputFormatter,
        maxLines: maxLine,
        maxLength: maxLength,
        focusNode: focusNode,
        minLines: 1,
        onTap: onPressed,
        onChanged: onChange,
        onFieldSubmitted: onSubmitted,
        validator: needValidation ? validator : null,
        keyboardType: textInputType ?? TextInputType.text,
        style: AppTextStyle.regular.copyWith(
            fontSize: 16,
            color: fieldColor ?? AppColors.secondPrimaryColor,
            fontWeight: FontWeight.normal),
        cursorColor: AppColors.primaryColor,
        decoration: InputDecoration(
            prefixIcon: prefix,
            fillColor: fillColor,
            filled: true,
            enabled: enable == false ? false : true,
            counterText: "",
            labelStyle: AppTextStyle.regular
                .copyWith(fontSize: 14, color: AppColors.greyColor),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            suffixIcon: suffix,
            hintText: hintText,
            contentPadding: const EdgeInsets.fromLTRB(16, 12, 0, 12),
            hintStyle: AppTextStyle.regular.copyWith(
                fontSize: 14, color: hintColor ?? AppColors.greyColor)),
      ),
    ),
  );
}
