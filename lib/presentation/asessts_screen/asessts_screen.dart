import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/asessts_bloc.dart';
import 'models/asessts_model.dart';

class AsesstsScreen extends StatelessWidget {
  const AsesstsScreen({Key? key})
      : super(
          key: key,
        );
  Widget builder(BuildContext context) {
    return BlocProvider<AsesstsBloc>(
      create: (context) => AsesstsBloc(AsesstsState(
        asesstsModelObj: AsesstsModel(),
      ))
        ..add(AsesstsInitialEvent()),
      child: AsesstsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray90004,
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: ImageConstant.imgMusammimuk0266x64,
                height: 156.v,
                width: 94.h,
                // margin: EdgeInsets.only(right: 56.h),
              ),
            ),
            SizedBox(height: 34.v),
            Text(
              "msg_what_do_you_to_manage".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargePoppinsWhiteA70013,
            ),
            SizedBox(height: 86.v),
            _buildRowSpacer(context)
          ],
        ),
      ),
    );
  }

  Widget _buildRowSpacer(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              NavigatorService.pushNamed(AppRoutes.fontsScreen);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillYellow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTextFontSvgrepoComBlack900,
                    height: 20.v,
                    width: 20.h,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_fonts".tr,
                    style: CustomTextStyles.poppinsBluegray90004,
                  ),
                  SizedBox(height: 14.v)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              NavigatorService.pushNamed(AppRoutes.shapesScreen);
            },
            child: Container(
              margin: EdgeInsets.only(left: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillYellow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmarkBlueGray90004,
                    height: 20.v,
                    width: 20.h,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_shapes".tr,
                    style: CustomTextStyles.poppinsBluegray90004,
                  ),
                  SizedBox(height: 14.v)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              NavigatorService.pushNamed(AppRoutes.logosPage);
            },
            child: Container(
              margin: EdgeInsets.only(left: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillYellow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTwitterLogoSvgrepoCom,
                    height: 20.v,
                    width: 20.h,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_logos".tr,
                    style: CustomTextStyles.poppinsBluegray90004,
                  ),
                  SizedBox(height: 14.v)
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              NavigatorService.pushNamed(AppRoutes.pngIamgesPage);
            },
            child: Container(
              margin: EdgeInsets.only(left: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillYellow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupBlueGray90004,
                    height: 20.v,
                    width: 20.h,
                  ),
                  SizedBox(height: 4.v),
                  Text(
                    "lbl_png_images".tr,
                    style: CustomTextStyles.poppinsBluegray90004,
                  ),
                  SizedBox(height: 14.v)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
