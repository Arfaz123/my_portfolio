import 'package:flutter/material.dart';
import '../config/app_color.dart';
import '../config/app_textstyle.dart';
import 'button_view.dart';

class BottomSheet extends StatefulWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  State<BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      color: Colors.transparent.withOpacity(0.55),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.secondPrimaryColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(22),
            topLeft: Radius.circular(22),
          ),
        ),
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Bottom Bar",
              style: AppTextStyle.regular.copyWith(fontSize: 16),
            ),
            Row(
              children: [
                buttonView(title: "ja", onPressed: () {}),
                buttonView(title: "Button"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
