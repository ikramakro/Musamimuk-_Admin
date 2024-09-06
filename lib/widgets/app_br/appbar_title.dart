import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTitle extends StatelessWidget {
  AppbarTitle({Key? key, required this.text, this.margin, this.onTap})
      : super(
          key: key,
        );
  String text;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.poppinsWhiteA700Medium.copyWith(
            color: appTheme.whiteA700,
            fontSize: 15.fSize,
          ),
        ),
      ),
    );
  }
}
