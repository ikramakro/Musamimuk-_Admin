import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_text_form_field.dart';

class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({Key? key, this.hintText, this.controller, this.margin})
      : super(
          key: key,
        );
  String? hintText;
  TextEditingController? controller;
  EdgeInsetsGeometry? margin;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        height: 40.v,
        width: 300.h,
        child: CustomTextFormField(
          controller: controller,
          hintText: "lbl_search".tr,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL61,
          filled: true,
          fillColor: appTheme.gray90002,
        ),
      ),
    );
  }
}
