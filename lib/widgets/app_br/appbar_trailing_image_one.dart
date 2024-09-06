import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarTrailingImageOne extends StatelessWidget {
  AppbarTrailingImageOne({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );
  String? imagePath;
  EdgeInsetsGeometry? margin;
  Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath!,
          height: 16.v,
          width: 18.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
