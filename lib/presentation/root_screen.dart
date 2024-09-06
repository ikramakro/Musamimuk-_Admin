import 'dart:convert';

import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:musamimuk_admin/core/app_export.dart';
import 'package:musamimuk_admin/data/models/login_response.dart';
import 'package:musamimuk_admin/presentation/contest_screen/contest_screen.dart';
import 'package:musamimuk_admin/presentation/online_designs_screen/online_designs_screen.dart';
import 'package:musamimuk_admin/widgets/app_br/appbar_trailing_image_one.dart';
import '../core/utils/shared_prf.dart';
import '../widgets/app_br/appbar_title.dart';
import '../widgets/app_br/appbar_title_edittext.dart';
import '../widgets/app_br/appbar_trailing_image.dart';
import '../widgets/app_br/custom_app_bar.dart';
import 'asessts_screen/asessts_screen.dart';
import 'dashboard_screen/dashboard_screen.dart';

class RootScreen extends StatefulWidget {
  RootScreen({super.key});

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  PageController pageController = PageController(initialPage: 0);
  SideMenuController sideMenu = SideMenuController();
  int currentPageIndex = 0;
  final localStorageService = LocalStorageService();

  String? token;
  String? userData;
  User? user;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page?.round() ?? 0;
      });
    });

    _initializeLocalStorage();
  }

  void _initializeLocalStorage() async {
    await localStorageService.init();

    setState(() {
      token = localStorageService.accessToken;
      userData = localStorageService.userData;
      print("Retrieved userData: $userData");

      if (userData != null) {
        try {
          // Decode the JSON string into a Map
          final decodedJson = json.decode(userData!);
          print('Decoded JSON: $decodedJson');

          // Convert the Map to a User object
          user = User.fromJson(decodedJson);
          print('User Email: ${user?.email}');
        } catch (e) {
          print('Error decoding userData: $e');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context, user),
        body: Container(
          decoration: AppDecoration.fillBluegray90002,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150.h,
                child: SideMenu(
                  controller: sideMenu,
                  style: SideMenuStyle(
                    displayMode: SideMenuDisplayMode.auto,
                    unselectedTitleTextStyle: theme.textTheme.titleSmall,
                    showHamburger: true,
                    hoverColor: const Color.fromARGB(255, 102, 107, 109),
                    selectedHoverColor:
                        const Color.fromARGB(255, 102, 107, 109),
                    selectedColor: const Color.fromARGB(255, 102, 107, 109),
                    selectedTitleTextStyle:
                        const TextStyle(color: Colors.white),
                    selectedIconColor: Colors.white,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  title: Column(
                    children: [
                      ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxHeight: 150,
                          maxWidth: 150,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMusammimuk02,
                        ),
                      ),
                      const Divider(
                        indent: 0.0,
                        endIndent: 0.0,
                        thickness: 0.1,
                      ),
                    ],
                  ),
                  items: [
                    SideMenuItem(
                      title: "lbl_dashboard".tr,
                      onTap: (index, _) {
                        pageController.jumpToPage(0);
                        sideMenu.changePage(index);
                      },
                      iconWidget: CustomImageView(
                        imagePath: currentPageIndex == 0
                            ? ImageConstant.imgwDashboardSvgrepoCom
                            : ImageConstant.imgDashboardSvgrepoCom,
                        height: 22.v,
                        width: 20.h,
                      ),
                    ),
                    SideMenuItem(
                      title: 'lbl_assets'.tr,
                      onTap: (index, _) {
                        pageController.jumpToPage(1);
                        sideMenu.changePage(index);
                      },
                      iconWidget: CustomImageView(
                        imagePath: currentPageIndex == 1
                            ? ImageConstant.imgCloseWhiteA700
                            : ImageConstant.imgCloseGreyA700,
                        height: 22.v,
                        width: 20.h,
                      ),
                    ),
                    SideMenuItem(
                      title: 'lbl_designs_created'.tr,
                      onTap: (index, _) {
                        pageController.jumpToPage(2);
                        sideMenu.changePage(index);
                      },
                      iconWidget: CustomImageView(
                        imagePath: currentPageIndex == 2
                            ? ImageConstant.imgAppsAddw
                            : ImageConstant.imgAppsAdd1,
                        height: 18.v,
                        width: 18.h,
                      ),
                    ),
                    SideMenuItem(
                      title: 'lbl_revenue'.tr,
                      onTap: (index, _) {
                        pageController.jumpToPage(3);
                        sideMenu.changePage(index);
                      },
                      iconWidget: CustomImageView(
                        imagePath: currentPageIndex == 3
                            ? ImageConstant.imgDollarCircleSvgrepow
                            : ImageConstant.imgDollarCircleSvgrepoCom,
                        height: 18.v,
                        width: 18.h,
                      ),
                    ),
                    SideMenuItem(
                      title: 'lbl_contests'.tr,
                      onTap: (index, _) {
                        pageController.jumpToPage(4);
                        sideMenu.changePage(index);
                      },
                      iconWidget: CustomImageView(
                        imagePath: currentPageIndex == 4
                            ? ImageConstant.imgCupStarSvgrepow
                            : ImageConstant.imgCupStarSvgrepoCom,
                        height: 18.v,
                        width: 14.h,
                      ),
                    ),
                    SideMenuItem(
                      title: 'lbl_settings'.tr,
                      onTap: (index, _) {
                        pageController.jumpToPage(5);
                        sideMenu.changePage(index);
                      },
                      iconWidget: CustomImageView(
                        imagePath: currentPageIndex == 5
                            ? ImageConstant.imgSearchBluewhite4001
                            : ImageConstant.imgSearchBlueGray4001,
                        height: 18.v,
                        width: 14.h,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    DashboardScreen().builder(context),
                    const AsesstsScreen().builder(context),
                    const OnlineDesignsScreen().builder(context),
                    DashboardScreen(),
                    const ContestScreen().builder(context),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the AppBar with search functionality and user information.
  PreferredSizeWidget _buildAppBar(BuildContext context, User? user) {
    return CustomAppBar(
      title: SizedBox(
        height: 30.v,
        child: AppbarTitleEdittext(
          margin: EdgeInsets.only(left: 38.h),
          hintText: "lbl_search".tr,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: user?.image ?? ImageConstant.imgEllipse141,
        ),
        AppbarTitle(
          text: user?.name ?? '',
          margin: EdgeInsets.only(
            right: 16.h,
          ),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSettingsWhiteA7001,
          margin: EdgeInsets.only(
            right: 16.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
