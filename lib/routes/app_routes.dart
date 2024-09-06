import 'package:flutter/material.dart';
import 'package:musamimuk_admin/presentation/root_screen.dart';
import '../presentation/add_fonts_screen/add_fonts_screen.dart';
import '../presentation/add_logos_screen/add_logos_screen.dart';
import '../presentation/add_online_designs_screen/add_online_designs_screen.dart';
import '../presentation/add_png_images_screen/add_png_images_screen.dart';
import '../presentation/add_shapes_screen/add_shapes_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/asessts_screen/asessts_screen.dart';
import '../presentation/contest_details_screen/contest_details_screen.dart';
import '../presentation/contest_screen/contest_screen.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/fonts_screen/fonts_screen.dart';
import '../presentation/login_page_screen/login_page_screen.dart';
import '../presentation/logos_screen/logos_screen.dart';

import '../presentation/online_designs_screen/online_designs_screen.dart';
import '../presentation/png_iamges_screen/png_images_screen.dart';
import '../presentation/register_screen/register_screen.dart';
import '../presentation/revenue_screen/revenue_screen.dart';
import '../presentation/shapes_screen/shapes_screen.dart';
import '../presentation/splash_screen.dart';
import '../presentation/start_a_new_contest_screen/start_a_new_contest_screen.dart';

class AppRoutes {
  static const String rootScreen = '/rootScreen';
  static const String loginPageScreen = '/login_page_screen';
  static const String registerScreen = '/register_screen';
  static const String dashboardScreen = '/dashboard_screen';
  static const String addShapesScreen = '/add_shapes_screen';
  static const String asesstsScreen = '/asessts_screen';
  static const String onlineDesignsScreen = '/online_designs_screen';
  static const String shapesScreen = '/shapes_screen';
  static const String addOnlineDesignsScreen = '/add_online_designs_screen';
  static const String fontsScreen = '/fonts_screen';
  static const String addFontsScreen = '/add_fonts_screen';
  static const String pngIamgesPage = '/png_iamges_page';
  static const String addPngImagesScreen = '/add_png_images_screen';
  static const String logosPage = '/logos_page';
  static const String logosTabContainerScreen = '/logos_tab_container_screen';
  static const String addLogosScreen = '/add_logos_screen';
  static const String revenueScreen = '/revenue_screen';
  static const String contestScreen = '/contest_screen';
  static const String contestDetailsScreen = '/contest_details_screen';
  static const String startANewContestScreen = '/start_a_new_contest_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';
  static Map<String, WidgetBuilder> get routes => {
        rootScreen: (context) {
          return RootScreen();
        },
        loginPageScreen: LoginPageScreen.builder,
        registerScreen: RegisterScreen.builder,
        // dashboardScreen: DashboardScreen.builder,
        dashboardScreen: (context) {
          return DashboardScreen().builder(context);
        },
        addShapesScreen: AddShapesScreen.builder,
        asesstsScreen: (context) {
          return const AsesstsScreen();
        },
        logosPage: (context) {
          return const LogosScreen().builder(context);
        },
        pngIamgesPage: (context) {
          return const PngImagesScreen().builder(context);
        },
        onlineDesignsScreen: (context) {
          return const OnlineDesignsScreen().builder(context);
        },
        shapesScreen: ShapesScreen.builder,
        addOnlineDesignsScreen: AddOnlineDesignsScreen.builder,
        fontsScreen: FontsScreen.builder,
        addFontsScreen: AddFontsScreen.builder,
        addPngImagesScreen: AddPngImagesScreen.builder,
        // logosTabContainerScreen: LogosTabContainerScreen.builder,
        addLogosScreen: AddLogosScreen.builder,
        revenueScreen: RevenueScreen.builder,
        contestScreen: (context) {
          return const ContestScreen().builder(context);
        },
        // contestScreen: ContestScreen.builder,
        contestDetailsScreen: ContestDetailsScreen.builder,
        startANewContestScreen: StartANewContestScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: (context) {
          return const SplashScreen();
        }
      };
}
