import 'package:flutter/material.dart';
import 'package:musamimuk_admin/presentation/contest_screen/models/contest_model.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';

class CertificatedesiItemWidget extends StatelessWidget {
  CertificatedesiItemWidget(this.certificatedesiItemModelObj, {Key? key})
      : super(
          key: key,
        );
  CertificatedesiItemModel certificatedesiItemModelObj;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      decoration: AppDecoration.fillBluegray80002.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: certificatedesiItemModelObj.certificateImag!,
            height: 56.v,
            width: 50.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 6.v),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 46.v,
              width: 262.h,
              padding: EdgeInsets.only(left: 10.h),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: 62.h,
                      child: Text(
                        certificatedesiItemModelObj.certificateTitl!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.poppinsWhiteA700.copyWith(
                          height: 4.21,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 26.h,
                    child: Text(
                      certificatedesiItemModelObj.designCount!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.poppinsWhiteA700Light.copyWith(
                        height: 2.71,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "lbl_view".tr,
              margin: EdgeInsets.only(left: 2.h),
              buttonStyle: CustomButtonStyles.fillGreen,
              buttonTextStyle: CustomTextStyles.bodySmall9,
            ),
          ),
          Expanded(
            child: CustomElevatedButton(
              text: "lbl_edit".tr,
              margin: EdgeInsets.only(left: 4.h),
              buttonTextStyle: CustomTextStyles.bodySmall9,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 2.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.fillRed900.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant
                        .imgDelete2SvgrepoComOnprimarycontainer10x6,
                    height: 10.v,
                    width: 6.h,
                  ),
                  Text(
                    certificatedesiItemModelObj.deleteText!,
                    style: CustomTextStyles.bodySmall9,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
