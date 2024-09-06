import '../../core/app_export.dart';
import '../../widgets/app_br/appbar_leading_iconbutton.dart';
import '../../widgets/app_br/appbar_title.dart';
import '../../widgets/app_br/appbar_title_edittext.dart';
import '../../widgets/app_br/appbar_trailing_image.dart';
import '../../widgets/app_br/appbar_trailing_image_one.dart';
import '../../widgets/app_br/custom_app_bar.dart';
import '../logos_screen/bloc/logos_bloc.dart';
import 'bloc/fonts_bloc.dart';
import 'models/fonts_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart';

class FontsScreen extends StatelessWidget {
  const FontsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FontsBloc>(
      create: (context) => FontsBloc(
        FontsState(fontsModelObj: FontsModel()),
      )..add(FontsInitialEvent()),
      child: const FontsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Adjust the length according to the number of tabs
      child: SafeArea(
        child: Scaffold(
          appBar: _buildAppBar(context),
          backgroundColor: appTheme.blueGray90004,
          body: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 18.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36.v),
                _buildAssetsSection(context),
                SizedBox(height: 16.v),
                _buildCategoriesSection(context),
                SizedBox(height: 34.v),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buildUserActionsGrid(context), // For "For You" tab
                      _buildUserActionsGrid(context), // For "Business" tab
                      _buildUserActionsGrid(context), // For "Premium" tab

                      _buildUserActionsGrid(context), // For "Islamic" tab
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAssetsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 6.v),
            child: Text(
              "lbl_assets".tr,
              style: CustomTextStyles.bodyMediumGray50002,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowPrevSmallSvgrepoComGray50002,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 2.h,
              top: 8.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 6.v,
            ),
            child: Text(
              "lbl_fonts".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () {
                navigateToAddFonts(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
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
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    SizedBox(width: 10.h),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "lbl_add_designs".tr,
                        style: CustomTextStyles.bodySmallBlack90012,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 3.v,
        ),
        onTap: () {
          NavigatorService.goBack();
        },
      ),
      title: AppbarTitleEdittext(
        margin: EdgeInsets.only(left: 38.h),
        hintText: "lbl_search".tr,
        // controller: searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEllipse141,
          // margin: EdgeInsets.only(
          //   // : 16.v,
          //   right: 16.h,
          // ),
        ),
        AppbarTitle(
          text: "lbl_fahad".tr,
          margin: EdgeInsets.only(
            // : 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSettingsWhiteA7001,
          margin: EdgeInsets.only(
            // : 16.v,
            right: 16.h,
          ),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  Widget _buildCategoriesSection(BuildContext context) {
    return Row(
      children: [
        Container(
          // width: 200,
          // margin: EdgeInsets.only(left: 20.h),
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(
                4.h,
              ),
              topLeft: Radius.circular(
                4.h,
              ),
            ),
          ),
          width: 500.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                tabs: [
                  Tab(text: "ARBIC".tr),
                  Tab(text: "ENGLISH".tr),
                  Tab(text: "URDU".tr),
                  Tab(text: "FARSI".tr),
                ],
                // indicatorWeight: 20,
                indicatorSize: TabBarIndicatorSize.tab,
                labelPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                indicatorColor: appTheme.yellowA70001,
                labelColor: appTheme.black900,
                indicator: BoxDecoration(
                    color: appTheme.yellowA70001,
                    borderRadius: BorderRadius.circular(10)),
                unselectedLabelColor: appTheme.gray500,
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(
                  4.h,
                ),
                topRight: Radius.circular(
                  4.h,
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  height: 20.v,
                  width: 20.h,
                  padding: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgStar,
                  ),
                ),
                Text(
                  "lbl_add_category".tr,
                  style: CustomTextStyles.bodySmallYellowA70001,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildUserActionsGrid(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
      ),
      child: BlocSelector<FontsBloc, FontsState, FontsModel?>(
        selector: (state) => state.fontsModelObj,
        builder: (context, fontsModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 40.v,
              crossAxisCount: 3,
              mainAxisSpacing: 10.h,
              crossAxisSpacing: 10.h,
            ),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: fontsModelObj?.useractionsgridItemList.length ?? 0,
            itemBuilder: (context, index) {
              UseractionsgridItemModel model =
                  fontsModelObj?.useractionsgridItemList[index] ??
                      UseractionsgridItemModel();
              return UseractionsgridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  navigateToAddFonts(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.addFontsScreen,
    );
  }
}
