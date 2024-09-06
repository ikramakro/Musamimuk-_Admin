import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_br/appbar_leading_iconbutton.dart';
import '../../widgets/app_br/appbar_title.dart';
import '../../widgets/app_br/appbar_title_edittext.dart';
import '../../widgets/app_br/appbar_trailing_image.dart';
import '../../widgets/app_br/appbar_trailing_image_one.dart';
import '../../widgets/app_br/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/contest_bloc.dart';
import 'models/contest_model.dart';
import 'models/userprofilesection_item_model.dart';
import 'widgets/userprofilesection_item_widget.dart';

class ContestScreen extends StatelessWidget {
  const ContestScreen({Key? key})
      : super(
          key: key,
        );
  Widget builder(BuildContext context) {
    return BlocProvider<ContestBloc>(
      create: (context) => ContestBloc(ContestState(
        contestModelObj: ContestModel(),
      ))
        ..add(ContestInitialEvent()),
      child: ContestScreen(),
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
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            children: [
              _buildContestSection(context),
              SizedBox(height: 24.v),
              _buildClosedContestSection(context),
              SizedBox(height: 4.v)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      title: BlocSelector<ContestBloc, ContestState, TextEditingController?>(
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
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTitle(
          text: "lbl_fahad".tr,
          margin: EdgeInsets.fromLTRB(12.h, 17.v, 16.h, 4.v),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSettingsWhiteA7001,
          margin: EdgeInsets.fromLTRB(47.h, 19.v, 49.h, 3.v),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  Widget _buildContestSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 8.h,
              right: 14.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_contest".tr,
                  style: theme.textTheme.bodyLarge,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.fillYellowA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAddsquaresvgrepocom21,
                        height: 18.v,
                        width: 10.h,
                      ),
                      SizedBox(width: 4.h),
                      Text(
                        "msg_start_a_new_contest".tr,
                        style: CustomTextStyles.bodySmallBlack90012,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 2.h),
            padding: EdgeInsets.symmetric(vertical: 16.v),
            decoration: AppDecoration.outlineBlack9001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "lbl_open_contest".tr,
                    style: CustomTextStyles.bodySmall12_1,
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.blueGray80001.withOpacity(0.38),
                  ),
                ),
                SizedBox(height: 16.v),
                Container(
                  margin: EdgeInsets.only(left: 6.h),
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  decoration: AppDecoration.fillBluegray80002.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle6189,
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
                                  width: 158.h,
                                  child: Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 62.h,
                                          child: Text(
                                            "msg_certificate_design".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .poppinsWhiteA700
                                                .copyWith(
                                              height: 4.21,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 26.h,
                                        child: Text(
                                          "msg_44_designs_submitted".tr,
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
                                  padding: EdgeInsets.only(right: 6.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      CustomElevatedButton(
                                        width: 36.h,
                                        text: "lbl_view".tr,
                                        buttonStyle:
                                            CustomButtonStyles.fillGreen,
                                        buttonTextStyle:
                                            CustomTextStyles.bodySmall9,
                                      ),
                                      CustomElevatedButton(
                                        width: 34.h,
                                        text: "lbl_edit".tr,
                                        margin: EdgeInsets.only(left: 4.h),
                                        buttonTextStyle:
                                            CustomTextStyles.bodySmall9,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 4.h),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 4.v),
                                        decoration:
                                            AppDecoration.fillRed900.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder8,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
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
                                              style:
                                                  CustomTextStyles.bodySmall9,
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildClosedContestSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    right: 16.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_closed_contest".tr,
                        style: CustomTextStyles.bodySmall12_1,
                      ),
                      CustomElevatedButton(
                        height: 28.v,
                        width: 58.h,
                        text: "lbl_all_time".tr,
                        buttonStyle: CustomButtonStyles.fillGrayTL14,
                        buttonTextStyle: CustomTextStyles.bodySmall10_1,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.blueGray80001.withOpacity(0.38),
                    endIndent: 2.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 14.h),
            child: BlocSelector<ContestBloc, ContestState, ContestModel?>(
              selector: (state) => state.contestModelObj,
              builder: (context, contestModelObj) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 10.v,
                    );
                  },
                  itemCount:
                      contestModelObj?.certificatedesiItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    CertificatedesiItemModel model =
                        contestModelObj?.certificatedesiItemList[index] ??
                            CertificatedesiItemModel();
                    return CertificatedesiItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
