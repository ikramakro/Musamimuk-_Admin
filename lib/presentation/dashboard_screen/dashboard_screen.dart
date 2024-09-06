// ignore_for_file: must_be_immutable

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../core/app_export.dart';
// import '../../widgets/custom_text_form_field.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key})
      : super(
          key: key,
        );
  Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
      create: (context) => DashboardBloc(DashboardState(
        dashboardModelObj: DashboardModel(),
      ))
        ..add(DashboardInitialEvent()),
      child: DashboardScreen(),
    );
  }

  PageController pageController = PageController(initialPage: 1);
  SideMenuController sideMenu = SideMenuController();
  @override
  Widget build(BuildContext context) {
    List<ChartData> chartData = [
      ChartData('1', 50),
      ChartData('2', 25),
      ChartData('3', 60),
      ChartData('4', 30),
      ChartData('5', 65),
      ChartData('5', 35),
      ChartData('5', 75),
      ChartData('5', 40),
      ChartData('5', 80),
      ChartData('5', 45),
    ];
    return SafeArea(
      child: BlocBuilder<DashboardBloc, DashboardState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: appTheme.primarycolor,
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 10.v),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi ${state.user?.name ?? ''}".tr,
                          style: CustomTextStyles.titleLargeVisbyRoundCFBold,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "msg_welcome_to_the_dashboard".tr,
                          style: CustomTextStyles.titleMediumVisbyRoundCF,
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              vertical: 10.v, horizontal: 20.h),
                          decoration: AppDecoration.outlineBlack900.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_today_revenue".tr,
                                    style: CustomTextStyles.labelLargeWhiteA700,
                                  ),
                                  SizedBox(height: 6.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgCurrencyRevenueSvgrepoCom,
                                        height: 20.v,
                                        width: 20.h,
                                        alignment: Alignment.center,
                                        fit: BoxFit.fill,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                      ),
                                      SizedBox(width: 6.v),
                                      Text(
                                        "lbl_162_5".tr,
                                        style: CustomTextStyles
                                            .titleLargeVisbyRoundCF,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 1,
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_designs_created".tr,
                                    style: CustomTextStyles.labelLargeWhiteA700,
                                  ),
                                  SizedBox(height: 6.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgDesignIdeasSvgrepoCom,
                                        height: 20.v,
                                        width: 20.h,
                                        fit: BoxFit.fill,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                      ),
                                      SizedBox(width: 6.v),
                                      Text(
                                        "lbl_162_5".tr,
                                        style: CustomTextStyles
                                            .titleLargeVisbyRoundCF,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 1,
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_active_users".tr,
                                    style: CustomTextStyles.labelLargeWhiteA700,
                                  ),
                                  SizedBox(height: 6.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgUserRoundedSvgrepoCom,
                                        height: 20.v,
                                        width: 20.h,
                                        alignment: Alignment.center,
                                        fit: BoxFit.fill,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                      ),
                                      SizedBox(width: 6.v),
                                      Text(
                                        "lbl_162_5".tr,
                                        style: CustomTextStyles
                                            .titleLargeVisbyRoundCF,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 1,
                                height: 50,
                                child: VerticalDivider(
                                  color: Colors.white,
                                  thickness: 2,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "lbl_today_revenue".tr,
                                    style: CustomTextStyles.labelLargeWhiteA700,
                                  ),
                                  SizedBox(height: 6.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgDownloadMinima,
                                        height: 20.v,
                                        width: 20.h,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(bottom: 4.v),
                                        fit: BoxFit.fill,
                                      ),
                                      SizedBox(width: 6.v),
                                      Text(
                                        "lbl_162_5".tr,
                                        style: CustomTextStyles
                                            .titleLargeVisbyRoundCF,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                height: 170.v,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.v, horizontal: 20.h),
                                decoration:
                                    AppDecoration.outlineBlack900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_active_users_by".tr,
                                      style: CustomTextStyles.bodySmall12_2,
                                    ),
                                    SizedBox(
                                      height: 100.v,
                                      child: SfCartesianChart(
                                        series: <SplineAreaSeries<ChartData,
                                            String>>[
                                          SplineAreaSeries<ChartData, String>(
                                            dataSource: chartData,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            color: appTheme.yellow500,
                                            opacity: 0.7,
                                            markerSettings:
                                                const MarkerSettings(
                                                    isVisible: false),
                                          ),
                                        ],
                                        primaryXAxis: const CategoryAxis(),
                                        primaryYAxis: const NumericAxis(),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Text(
                                        "lbl_time_of_day".tr,
                                        style: CustomTextStyles.bodySmall11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Expanded(
                              child: Container(
                                height: 170.v,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.v, horizontal: 20.h),
                                decoration:
                                    AppDecoration.outlineBlack900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_active_users_time".tr,
                                      style: CustomTextStyles.bodySmall12_2,
                                    ),
                                    SizedBox(
                                      height: 130.v,
                                      child: SfCartesianChart(
                                        series: <ColumnSeries<ChartData,
                                            String>>[
                                          ColumnSeries<ChartData, String>(
                                            dataSource: chartData,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            color: appTheme.yellow500,
                                            opacity: 0.7,
                                            markerSettings: MarkerSettings(
                                              isVisible: false,
                                              borderColor: appTheme.black900,
                                            ),
                                          ),
                                        ],
                                        primaryXAxis: CategoryAxis(
                                          title: AxisTitle(
                                            text: "lbl_time_of_day".tr,
                                            textStyle:
                                                CustomTextStyles.bodySmall11,
                                          ),
                                        ),
                                        primaryYAxis: const NumericAxis(),
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: const EdgeInsets.only(
                                    //       left: 120),
                                    //   child: Text(
                                    //     "lbl_time_of_day".tr,
                                    //     style: CustomTextStyles
                                    //         .bodySmall11,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.v,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 170.v,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.v, horizontal: 20.h),
                                decoration:
                                    AppDecoration.outlineBlack900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_active_users_time".tr,
                                      style: CustomTextStyles.bodySmall12_2,
                                    ),
                                    SizedBox(
                                      height: 100.v,
                                      child: SfCartesianChart(
                                        series: <BarSeries<ChartData, String>>[
                                          BarSeries<ChartData, String>(
                                            dataSource: chartData,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            color: appTheme.yellow500,
                                            opacity: 0.7,
                                            markerSettings: MarkerSettings(
                                              isVisible: false,
                                              borderColor: appTheme.black900,
                                            ),
                                          ),
                                        ],
                                        primaryXAxis: const CategoryAxis(),
                                        primaryYAxis: const NumericAxis(),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Text(
                                        "lbl_time_of_day".tr,
                                        style: CustomTextStyles.bodySmall11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            Expanded(
                              child: Container(
                                height: 170.v,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.v, horizontal: 20.h),
                                decoration:
                                    AppDecoration.outlineBlack900.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "msg_active_users_time".tr,
                                      style: CustomTextStyles.bodySmall12_2,
                                    ),
                                    SizedBox(
                                        height: 100.v,
                                        child: SfCircularChart(
                                          series: <PieSeries<ChartData,
                                              String>>[
                                            PieSeries<ChartData, String>(
                                              dataSource: chartData,
                                              xValueMapper:
                                                  (ChartData data, _) => data.x,
                                              yValueMapper:
                                                  (ChartData data, _) => data.y,
                                              dataLabelSettings:
                                                  const DataLabelSettings(
                                                      isVisible: true),
                                            ),
                                          ],
                                        )),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Text(
                                        "lbl_time_of_day".tr,
                                        style: CustomTextStyles.bodySmall11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRowSpacer(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
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
                  height: 10.v,
                  width: 12.h,
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
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillYellow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBookmarkBlueGray90004,
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_shapes".tr,
                  style: CustomTextStyles.poppinsBluegray90004,
                ),
                SizedBox(height: 12.v)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
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
                  height: 8.v,
                  width: 12.h,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_logos".tr,
                  style: CustomTextStyles.poppinsBluegray90004,
                ),
                SizedBox(height: 12.v)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillYellow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPngwing1,
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_png_images".tr,
                  style: CustomTextStyles.poppinsBluegray90004,
                ),
                SizedBox(height: 14.v)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildUsersSubscriptionSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "msg_users_by_country".tr,
            style: CustomTextStyles.bodySmall12_2,
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.h),
            child: Text(
              "msg_subscription_record".tr,
              style: CustomTextStyles.bodySmall12_2,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSearchSettingsSection(
    BuildContext context, {
    required String searchImage,
    required String settingsText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: searchImage,
          height: 20.v,
          width: 16.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text(
            settingsText,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.whiteA700.withOpacity(0.5),
            ),
          ),
        )
      ],
    );
  }
}

class ChartData {
  final String x;
  final double y;

  ChartData(this.x, this.y);
}
