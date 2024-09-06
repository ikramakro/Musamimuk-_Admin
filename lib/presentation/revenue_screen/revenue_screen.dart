import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/revenue_bloc.dart';
import 'models/revenue_model.dart';

class RevenueScreen extends StatelessWidget {
  const RevenueScreen({Key? key})
      : super(
          key: key,
        );
  static Widget builder(BuildContext context) {
    return BlocProvider<RevenueBloc>(
      create: (context) => RevenueBloc(RevenueState(
        revenueModelObj: RevenueModel(),
      ))
        ..add(RevenueInitialEvent()),
      child: RevenueScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 194.h,
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 18.v,
              ),
              decoration: AppDecoration.fillBluegray90002,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMusammimuk0266x64,
                    height: 66.v,
                    width: 64.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 52.h),
                  ),
                  SizedBox(height: 10.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgMusammimuk0214x112,
                    height: 14.v,
                    width: 112.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 24.h),
                  ),
                  SizedBox(height: 46.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 2.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDashboardSvgrepoCom,
                          height: 22.v,
                          width: 20.h,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 14.h),
                            child: Text(
                              "lbl_dashboard".tr,
                              style: CustomTextStyles.titleSmallGray50002,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 28.v),
                  BlocSelector<RevenueBloc, RevenueState,
                      TextEditingController?>(
                    selector: (state) => state.assetsEditTextController,
                    builder: (context, assetsEditTextController) {
                      return CustomTextFormField(
                        width: 150.h,
                        controller: assetsEditTextController,
                        hintText: "lbl_assets".tr,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.centerLeft,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(6.h, 12.v, 12.h, 12.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCloseWhiteA700,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 42.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                        filled: true,
                        fillColor: appTheme.whiteA700.withOpacity(0.06),
                      );
                    },
                  ),
                  SizedBox(height: 28.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAppsAdd1,
                          height: 16.v,
                          width: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "lbl_online_designs".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 40.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDollarCircleSvgrepoCom,
                          height: 20.v,
                          width: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "lbl_revenue".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 38.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgCupStarSvgrepoCom,
                          height: 18.v,
                          width: 14.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text(
                            "lbl_contests".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 42.v),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 6.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSearchBlueGray4001,
                          height: 20.v,
                          width: 16.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text(
                            "lbl_settings".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 268.v)
                ],
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: 244.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.h,
                      vertical: 6.v,
                    ),
                    decoration: AppDecoration.fillBlack,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgNavbarIcon,
                          height: 6.v,
                          width: 4.h,
                        ),
                        Expanded(
                          child: Container(
                            height: 20.v,
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                  width: 8.h,
                                  margin: EdgeInsets.only(left: 36.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIconlyLightNotificationWhiteA700,
                                        height: 10.v,
                                        width: 3.h,
                                      ),
                                      SizedBox(width: 4.h),
                                      Expanded(
                                        child: Container(
                                          height: 1.adaptSize,
                                          width: 1.adaptSize,
                                          decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                              1.h,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 60.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.h,
                                    vertical: 4.v,
                                  ),
                                  decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRewindWhiteA700,
                                        height: 6.adaptSize,
                                        width: 6.adaptSize,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "lbl_search".tr,
                                          style:
                                              CustomTextStyles.poppinsGray50001,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse14116x14,
                          height: 16.v,
                          width: 14.h,
                          radius: BorderRadius.circular(
                            6.h,
                          ),
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text(
                            "lbl_fahad".tr,
                            style: CustomTextStyles.poppinsWhiteA700Medium,
                          ),
                        ),
                        Container(
                          height: 8.v,
                          width: 24.h,
                          margin: EdgeInsets.only(bottom: 2.v),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgEllipse142,
                                height: 5.v,
                                width: 4.h,
                              ),
                              Text(
                                "lbl_3".tr,
                                style: CustomTextStyles.visbyRoundCFWhiteA700,
                              )
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCrossSvgrepoCom,
                          height: 8.adaptSize,
                          width: 8.adaptSize,
                          margin: EdgeInsets.only(
                            left: 4.h,
                            bottom: 4.v,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 44.v),
                  Padding(
                    padding: EdgeInsets.only(right: 160.h),
                    child: Text(
                      "lbl_revenue".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    width: 230.h,
                    padding: EdgeInsets.symmetric(vertical: 18.v),
                    decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 14.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "lbl_today_revenue".tr,
                                    style: CustomTextStyles.bodySmallWhiteA700,
                                  ),
                                ),
                              ),
                              Text(
                                "lbl_total_revenue".tr,
                                style: CustomTextStyles.bodySmallWhiteA700,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "msg_subscription_revenue".tr,
                                    style: CustomTextStyles.bodySmallWhiteA700,
                                  ),
                                  Text(
                                    "msg_google_ads_revenue".tr,
                                    style: CustomTextStyles.bodySmallWhiteA700,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 18.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCurrencyRevenueSvgrepoCom,
                                height: 28.v,
                                width: 6.h,
                              ),
                              Expanded(
                                child: Container(
                                  height: 34.v,
                                  margin: EdgeInsets.only(left: 4.h),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "lbl_162_5".tr,
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                      Container(
                                        height: 30.v,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "lbl_27310_5".tr,
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCrownLineSvgrepoCom,
                                              height: 28.v,
                                              width: 6.h,
                                            )
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 16.h),
                                          child: Text(
                                            "lbl_1658_5".tr,
                                            style: theme.textTheme.titleLarge,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          "lbl_146_5".tr,
                                          style: theme.textTheme.titleLarge,
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMoneyBagSvgrepoCom,
                                        height: 34.v,
                                        width: 8.h,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(left: 42.h),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgForward,
                                        height: 34.v,
                                        width: 6.h,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(right: 40.h),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 6.v)
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  SizedBox(
                    width: 238.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Container(
                            height: 330.v,
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: double.maxFinite,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.v),
                                    decoration:
                                        AppDecoration.outlineBlack9001.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder4,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          height: 34.v,
                                          width: double.maxFinite,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 6.h,
                                                    top: 8.v,
                                                  ),
                                                  child: Text(
                                                    "msg_revenue_generated".tr,
                                                    style: CustomTextStyles
                                                        .bodySmall12_1,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                  height: 34.v,
                                                  width: 30.h,
                                                  margin: EdgeInsets.only(
                                                      right: 4.h),
                                                  decoration: BoxDecoration(
                                                    color: appTheme.gray900,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      14.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 16.v,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Text(
                                                      "lbl_this_week".tr,
                                                      style: CustomTextStyles
                                                          .bodySmall10_1,
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgIconlyLightArrow,
                                                      height: 16.v,
                                                      width: 4.h,
                                                      margin: EdgeInsets.only(
                                                          right: 8.h),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 12.v),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Divider(
                                            color: appTheme.blueGray80001
                                                .withOpacity(0.38),
                                            endIndent: 4.h,
                                          ),
                                        ),
                                        SizedBox(height: 38.v),
                                        SizedBox(
                                          width: 120.h,
                                          child: Divider(
                                            color: appTheme.blueGray80001
                                                .withOpacity(0.4),
                                            endIndent: 8.h,
                                          ),
                                        ),
                                        SizedBox(height: 36.v),
                                        SizedBox(
                                          width: 120.h,
                                          child: Divider(
                                            color: appTheme.blueGray80001
                                                .withOpacity(0.4),
                                            endIndent: 8.h,
                                          ),
                                        ),
                                        SizedBox(height: 38.v),
                                        SizedBox(
                                          width: 120.h,
                                          child: Divider(
                                            color: appTheme.blueGray80001
                                                .withOpacity(0.4),
                                            endIndent: 8.h,
                                          ),
                                        ),
                                        SizedBox(height: 36.v),
                                        SizedBox(
                                          width: 120.h,
                                          child: Divider(
                                            color: appTheme.blueGray80001
                                                .withOpacity(0.4),
                                            endIndent: 8.h,
                                          ),
                                        ),
                                        SizedBox(height: 30.v),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: Text(
                                              "lbl_02".tr,
                                              style: CustomTextStyles
                                                  .bodySmallGray50011,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          child: Divider(
                                            color: appTheme.blueGray80001,
                                            endIndent: 6.h,
                                          ),
                                        ),
                                        SizedBox(height: 6.v),
                                        SizedBox(
                                          width: double.maxFinite,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "lbl_sun".tr,
                                                style: CustomTextStyles
                                                    .bodySmall10_1,
                                              ),
                                              Text(
                                                "lbl_mon".tr,
                                                style: CustomTextStyles
                                                    .bodySmall10_1,
                                              ),
                                              Text(
                                                "lbl_tue".tr,
                                                style: CustomTextStyles
                                                    .bodySmall10_1,
                                              ),
                                              Text(
                                                "lbl_wed".tr,
                                                style: CustomTextStyles
                                                    .bodySmall10_1,
                                              ),
                                              Text(
                                                "lbl_thu".tr,
                                                style: CustomTextStyles
                                                    .bodySmall10_1,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                  "lbl_fri".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall10_1,
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 4.h),
                                                child: Text(
                                                  "lbl_sat".tr,
                                                  style: CustomTextStyles
                                                      .bodySmall10_1,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 18.v)
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 132.v),
                                    child: Text(
                                      "lbl_10_000".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray50011,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      bottom: 102.v,
                                    ),
                                    child: Text(
                                      "lbl_10002".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray50011,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 94.v),
                                    child: Text(
                                      "lbl_15_000".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray50011,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_5000".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray50011,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle6174,
                                  height: 146.v,
                                  width: 110.h,
                                  margin: EdgeInsets.only(
                                    right: 8.h,
                                    bottom: 64.v,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10.h),
                        SizedBox(
                          width: 76.h,
                          child: Column(
                            children: [
                              Text(
                                "lbl_revenue_details".tr,
                                style: CustomTextStyles.bodySmall12_1,
                              ),
                              SizedBox(height: 22.v),
                              SizedBox(
                                height: 180.v,
                                width: double.maxFinite,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Container(
                                      height: 16.v,
                                      width: 10.h,
                                      margin: EdgeInsets.only(right: 24.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.gray90001,
                                        borderRadius: BorderRadius.circular(
                                          3.h,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2.v),
                                      child: Text(
                                        "lbl_subscriptions".tr,
                                        style:
                                            CustomTextStyles.kinetikaWhiteA700,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 12.h),
                                        child: SizedBox(
                                          height: 168.v,
                                          width: 40.h,
                                          child: CircularProgressIndicator(
                                            value: 0.5,
                                            strokeWidth: 17.8.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 10.h,
                                        bottom: 4.v,
                                      ),
                                      child: Text(
                                        "lbl_1605".tr,
                                        style: CustomTextStyles
                                            .bodySmallWhiteA700_1,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 72.v),
                                        child: Text(
                                          "lbl_27310".tr,
                                          style: theme.textTheme.bodyMedium,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 8.v),
                              Container(
                                width: double.maxFinite,
                                margin: EdgeInsets.symmetric(horizontal: 10.h),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 14.v,
                                        width: 3.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.redA200,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 16.v,
                                        margin: EdgeInsets.only(left: 2.h),
                                        child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: [
                                            Container(
                                              height: 16.v,
                                              width: 10.h,
                                              margin:
                                                  EdgeInsets.only(left: 14.h),
                                              decoration: BoxDecoration(
                                                color: appTheme.gray90001,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  3.h,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    "lbl_ad_revenue".tr,
                                                    style: CustomTextStyles
                                                        .kinetikaWhiteA700,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 2.h),
                                                    child: Text(
                                                      "lbl_4568".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallWhiteA700_1,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 6.v),
                              SizedBox(
                                width: double.maxFinite,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        height: 14.v,
                                        width: 3.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.yellow700,
                                          borderRadius: BorderRadius.circular(
                                            1.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 16.v,
                                      width: 54.h,
                                      margin: EdgeInsets.only(left: 2.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 16.v,
                                            width: 8.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.gray90001,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                3.h,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "msg_google_ad_revenue".tr,
                                                  style: CustomTextStyles
                                                      .kinetikaWhiteA700,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 8.h),
                                                  child: Text(
                                                    "lbl_246".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallWhiteA700_1,
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 174.v)
          ],
        ),
      ),
    );
  }
}
