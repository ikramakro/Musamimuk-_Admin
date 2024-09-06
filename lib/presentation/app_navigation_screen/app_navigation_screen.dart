import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );
  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: AppDecoration.fillWhiteA7001,
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_login_page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_register".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.registerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_dashboard".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.dashboardScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_asessts".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.asesstsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_add_shapes".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addShapesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_online_designs".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.onlineDesignsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_shapes".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.shapesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_add_png_images".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addPngImagesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_logos2".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logosPage),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_add_logos".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addLogosScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_contest".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.contestScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_contest_details".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.contestDetailsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_add_online_designs".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.addOnlineDesignsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_fonts".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.fontsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_add_fonts".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addFontsScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_png_iamges".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.pngIamgesPage),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "lbl_revenue".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.revenueScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "msg_start_a_new_contest".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.startANewContestScreen),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA7001,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text(
              "lbl_app_navigation".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.black900,
                fontSize: 20.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "msg_check_your_app_s".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: appTheme.blueGray40001,
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: appTheme.black900,
          )
        ],
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: AppDecoration.fillWhiteA7001,
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: appTheme.black900,
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: appTheme.blueGray40001,
            )
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
