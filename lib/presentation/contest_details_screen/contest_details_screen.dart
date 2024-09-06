import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_br/appbar_leading_iconbutton.dart';
import '../../widgets/app_br/appbar_title.dart';
import '../../widgets/app_br/appbar_title_edittext.dart';
import '../../widgets/app_br/appbar_trailing_image.dart';
import '../../widgets/app_br/appbar_trailing_image_one.dart';
import '../../widgets/app_br/custom_app_bar.dart';
import 'bloc/contest_details_bloc.dart';
import 'models/contest_details_model.dart.dart';

class ContestDetailsScreen extends StatelessWidget {
  const ContestDetailsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ContestDetailsBloc>(
      create: (context) => ContestDetailsBloc(
        ContestDetailsState(
          contestDetailsModelObj: ContestDetailsModel(),
        ),
      )..add(ContestDetailsInitialEvent()),
      child: ContestDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray90004,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              _buildContestHeader(context),
              SizedBox(height: 18.v),
              _buildContestDetails(context),
              SizedBox(height: 18.v),
              _buildSubmittedDesigns(context),
              SizedBox(height: 4.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 12.h,
          top: 4.v,
          bottom: 2.v,
        ),
      ),
      title: BlocSelector<ContestDetailsBloc, ContestDetailsState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleEdittext(
            margin: EdgeInsets.only(left: 38.h),
            hintText: "lbl_search".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEllipse141,
          margin: EdgeInsets.only(
            top: 17.v,
            right: 15.h,
          ),
        ),
        AppbarTitle(
          text: "lbl_fahad".tr,
          margin: EdgeInsets.fromLTRB(12.h, 18.v, 15.h, 4.v),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSettingsWhiteA7001,
          margin: EdgeInsets.fromLTRB(47.h, 20.v, 47.h, 3.v),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildContestHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Row(
        children: [
          Text(
            "lbl_contest".tr,
            style: CustomTextStyles.bodyLargeWhiteA700,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowPrevSmallSvgrepoComGray50002,
            height: 20.v,
            width: 12.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_saudi_national_day".tr,
              style: theme.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContestDetails(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "lbl_contest_details".tr,
              style: CustomTextStyles.bodySmall12_1,
            ),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray80001.withOpacity(0.38),
            ),
          ),
          SizedBox(height: 18.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 148.h,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 168.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle5591,
                                height: 168.v,
                                width: double.maxFinite,
                                radius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.h,
                                    right: 10.h,
                                    bottom: 10.v,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        height: 24.v,
                                        width: 14.h,
                                        decoration:
                                            AppDecoration.fillBlue.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEditWhiteA700,
                                              height: 8.v,
                                              width: 5.h,
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 24.v,
                                        width: 14.h,
                                        padding: EdgeInsets.only(bottom: 4.v),
                                        decoration:
                                            AppDecoration.fillRed.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder4,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgDelete2SvgrepoComOnprimarycontainer12x6,
                                              height: 12.v,
                                              width: 6.h,
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
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text(
                              "lbl_contest_title".tr,
                              style: CustomTextStyles.bodySmallPoppinsWhiteA700,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Container(
                          height: 20.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 6.h),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                "msg_saudi_national_day".tr,
                                style:
                                    CustomTextStyles.labelLargePoppinsWhiteA700,
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 18.v,
                                  width: 10.h,
                                  margin: EdgeInsets.only(right: 12.h),
                                  decoration: AppDecoration.fillBlue.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEditWhiteA700,
                                        height: 6.v,
                                        width: 4.h,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 46.v),
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "lbl_49".tr,
                                      style: CustomTextStyles.titleLargePoppins,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "msg_designs_accepted".tr,
                                      style: CustomTextStyles
                                          .bodySmallPoppinsWhiteA700,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.h),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text(
                                      "lbl_62".tr,
                                      style: CustomTextStyles.titleLargePoppins,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "msg_designs_rejected".tr,
                                      style: CustomTextStyles
                                          .bodySmallPoppinsWhiteA700,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10.h),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: Text(
                                        "lbl_111".tr,
                                        style:
                                            CustomTextStyles.titleLargePoppins,
                                      ),
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "msg_designs_submitted".tr,
                                      style: CustomTextStyles
                                          .bodySmallPoppinsWhiteA700,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Divider(
                            color: appTheme.whiteA700.withOpacity(0.1),
                            indent: 36.h,
                            endIndent: 48.h,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 58.h,
                            right: 66.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "lbl_date".tr,
                                style: CustomTextStyles.labelMediumPoppins,
                              ),
                              SizedBox(width: 12.h),
                              Text(
                                "lbl_may_21_2023".tr,
                                style: CustomTextStyles
                                    .bodySmallPoppinsWhiteA700Light,
                              ),
                              SizedBox(width: 12.h),
                              Text(
                                "lbl_3_34_pm".tr,
                                style: CustomTextStyles
                                    .bodySmallPoppinsWhiteA700Light,
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
          SizedBox(height: 16.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmittedDesigns(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              "msg_submitted_designs".tr,
              style: CustomTextStyles.bodySmall12_1,
            ),
          ),
          SizedBox(height: 12.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              color: appTheme.blueGray80001.withOpacity(0.38),
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            decoration: AppDecoration.fillBluegray80002.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder8,
            ),
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle6194,
                  height: 56.v,
                  width: 48.h,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                ),
                SizedBox(width: 12.h),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 46.v,
                            width: 154.h,
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 52.h,
                                    child: Text(
                                      "msg_daily_calendar_competition".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.poppinsWhiteA700
                                          .copyWith(
                                        height: 4.21,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 24.h,
                                  child: Text(
                                    "msg_12_designs_submitted".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .poppinsWhiteA700Light
                                        .copyWith(
                                      height: 2.71,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 12.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 2.v),
                                  decoration: AppDecoration.fillGreen.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgEyeSvgrepoComOnprimarycontainer,
                                        height: 12.v,
                                        width: 8.h,
                                        alignment: Alignment.bottomCenter,
                                      ),
                                      Text(
                                        "lbl_view".tr,
                                        style: CustomTextStyles.bodySmall9,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 2.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.h,
                                    vertical: 4.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillBlue700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgEdit1SvgrepoComOnprimarycontainer,
                                        height: 10.v,
                                        width: 6.h,
                                      ),
                                      Text(
                                        "lbl_edit".tr,
                                        style: CustomTextStyles.bodySmall9,
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 2.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.h,
                                    vertical: 4.v,
                                  ),
                                  decoration: AppDecoration.fillRed900.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder8,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgDelete2SvgrepoComOnprimarycontainer10x6,
                                        height: 10.v,
                                        width: 6.h,
                                      ),
                                      Text(
                                        "lbl_delete".tr,
                                        style: CustomTextStyles.bodySmall9,
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
                )
              ],
            ),
          ),
          SizedBox(height: 156.v)
        ],
      ),
    );
  }
}
