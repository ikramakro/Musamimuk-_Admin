import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_icon_button.dart';

class AppbarLeadingIconbutton extends StatelessWidget {
  AppbarLeadingIconbutton({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );
  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorService.goBack();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 42.v,
          width: 36.h,
          padding: EdgeInsets.all(4.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
          ),
        ),
      ),
    );
  }
}
