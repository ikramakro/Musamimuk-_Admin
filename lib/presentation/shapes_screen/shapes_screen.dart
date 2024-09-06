import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_br/appbar_leading_iconbutton.dart';
import '../../widgets/app_br/appbar_title.dart';
import '../../widgets/app_br/appbar_title_edittext.dart';
import '../../widgets/app_br/appbar_trailing_image.dart';
import '../../widgets/app_br/appbar_trailing_image_one.dart';
import '../../widgets/app_br/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/shapes_bloc.dart';
import 'models/chipviewview_item_model.dart';
import 'models/shapes_model.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/chipviewview_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';

class ShapesScreen extends StatelessWidget {
  const ShapesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ShapesBloc>(
      create: (context) => ShapesBloc(
        ShapesState(shapesModelObj: ShapesModel()),
      )..add(ShapesInitialEvent()),
      child: const ShapesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Adjust according to your tabs
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.blueGray90004,
          appBar: _buildAppBar(context),
          body: Container(
            padding: EdgeInsets.symmetric(vertical: 6.v),
            child: Column(
              children: [
                _buildAssetsSection(context),
                SizedBox(height: 16.v),
                _buildCategoriesSection(context),
                SizedBox(height: 15.v),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buildUserProfiles(context), // For "For You" tab
                      _buildUserProfiles(context), // For "Business" tab
                      _buildUserProfiles(context), // For "Premium" tab
                      _buildUserProfiles(context), // For "Islamic" tab
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

  /// Builds the AppBar with search functionality and user information.
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 3.v,
        ),
      ),
      title: BlocSelector<ShapesBloc, ShapesState, TextEditingController?>(
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

  /// Builds the assets section with title and an add button.
  Widget _buildAssetsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_assets".tr,
            style: CustomTextStyles.bodyMediumGray50002,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowPrevSmallSvgrepoComGray50002,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(left: 2.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_shapes".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          const Spacer(),
          CustomElevatedButton(
            height: 36.v,
            width: 136.h,
            text: "lbl_add_designs".tr,
            leftIcon: Container(
              margin: EdgeInsets.only(right: 10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgAddsquaresvgrepocom21,
                height: 18.adaptSize,
                width: 18.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.fillYellowA,
            buttonTextStyle: CustomTextStyles.bodySmallBlack90012,
            onPressed: () => onTapAdddesigns(context),
          )
        ],
      ),
    );
  }

  /// Builds the category tabs section.
  Widget _buildCategoriesSection(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4.h),
              topLeft: Radius.circular(4.h),
            ),
          ),
          height: 50.v,
          width: 400.h,
          child: TabBar(
            tabs: [
              Tab(text: "For You".tr),
              Tab(text: "Business".tr),
              Tab(text: "Premium".tr),
              Tab(text: "Islamic".tr),
            ],
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
        ),
        InkWell(
          onTap: () {
            onTapAddCatagor(context);
          },
          child: Container(
            height: 50.v,
            padding: EdgeInsets.all(6.h),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(4.h),
                topRight: Radius.circular(4.h),
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

  /// Builds the grid view for user profiles within the selected tab.
  Widget _buildUserProfiles(BuildContext context) {
    return SizedBox(
      height: 554.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: BlocSelector<ShapesBloc, ShapesState, ShapesModel?>(
              selector: (state) => state.shapesModelObj,
              builder: (context, shapesModelObj) {
                return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 140.v,
                    crossAxisCount: 4,
                    mainAxisSpacing: 6.h,
                    crossAxisSpacing: 6.h,
                  ),
                  // physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return UserprofileItemWidget(
                      onTapTxtDelete: () {
                        onTapTxtDelete(context);
                      },
                      onTapTxtEdit: () {},
                      onTapTxtView: () {
                        onTapTxtView(context);
                      },
                    );
                  },
                );
              },
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 4.h),
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [
          //       Container(
          //         width: 148.h,
          //         padding: EdgeInsets.symmetric(
          //           horizontal: 16.h,
          //           vertical: 18.v,
          //         ),
          //         decoration: AppDecoration.outlineBlack9002,
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             CustomImageView(
          //               imagePath: ImageConstant.imgDiamond1,
          //               height: 54.v,
          //               width: 48.h,
          //             ),
          //             SizedBox(height: 24.v),
          //             SizedBox(
          //               width: double.maxFinite,
          //               child:
          //                   BlocSelector<ShapesBloc, ShapesState, ShapesModel?>(
          //                 selector: (state) => state.shapesModelObj,
          //                 builder: (context, shapesModelObj) {
          //                   return Wrap(
          //                     runSpacing: 3.v,
          //                     spacing: 3.h,
          //                     children: List<Widget>.generate(
          //                       shapesModelObj?.chipviewviewItemList.length ??
          //                           0,
          //                       (index) {
          //                         ChipviewviewItemModel model = shapesModelObj
          //                                 ?.chipviewviewItemList[index] ??
          //                             ChipviewviewItemModel();
          //                         return ChipviewviewItemWidget(
          //                           model,
          //                           onSelectedChipView: (value) {
          //                             context.read<ShapesBloc>().add(
          //                                 UpdateChipViewEvent(
          //                                     index: index, isSelected: value));
          //                           },
          //                         );
          //                       },
          //                     ),
          //                   );
          //                 },
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //       SizedBox(height: 6.v),
          //       Container(
          //         width: 148.h,
          //         padding: EdgeInsets.symmetric(
          //           horizontal: 14.h,
          //           vertical: 16.v,
          //         ),
          //         decoration: AppDecoration.outlineBlack9002,
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             CustomImageView(
          //               imagePath: ImageConstant.imgSquare2,
          //               height: 64.v,
          //               width: 54.h,
          //             ),
          //             SizedBox(height: 16.v),
          //             SizedBox(
          //               width: double.maxFinite,
          //               child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.center,
          //                 children: [
          //                   Expanded(
          //                     child: Container(
          //                       height: 18.v,
          //                       width: 34.h,
          //                       decoration: BoxDecoration(
          //                         color: appTheme.green500,
          //                         borderRadius: BorderRadius.circular(
          //                           8.h,
          //                         ),
          //                       ),
          //                     ),
          //                   ),
          //                   Container(
          //                     margin: EdgeInsets.only(left: 4.h),
          //                     padding: EdgeInsets.symmetric(
          //                       horizontal: 8.h,
          //                       vertical: 2.v,
          //                     ),
          //                     decoration: AppDecoration.fillBlue700.copyWith(
          //                       borderRadius: BorderRadiusStyle.circleBorder8,
          //                     ),
          //                     child: Text(
          //                       "lbl_edit".tr,
          //                       textAlign: TextAlign.left,
          //                       style: theme.textTheme.bodySmall,
          //                     ),
          //                   ),
          //                   Container(
          //                     margin: EdgeInsets.only(left: 4.h),
          //                     padding: EdgeInsets.all(2.h),
          //                     decoration: AppDecoration.fillRed900.copyWith(
          //                       borderRadius: BorderRadiusStyle.circleBorder8,
          //                     ),
          //                     child: Text(
          //                       "lbl_delete".tr,
          //                       textAlign: TextAlign.left,
          //                       style: theme.textTheme.bodySmall,
          //                     ),
          //                   )
          //                 ],
          //               ),
          //             ),
          //             SizedBox(height: 2.v)
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  /// Handles the "Add Designs" button action.
  void onTapAdddesigns(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.addShapesScreen);
  }

  void onTapAddCatagor(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: appTheme.primarycolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.h),
          ),
          title: Text(
            "Add Category",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: appTheme.whiteA700,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Category Name",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: appTheme.gray200,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              CustomTextFormField(
                // controller: nameController,
                width: 200.h,
                hintText: "msg_write_a_shape_name".tr,
                hintStyle: CustomTextStyles.bodyMediumBluegray20013,
                validator: (value) {
                  if (!isText(value)) {
                    return "err_msg_please_enter_valid_text";
                  }
                  return null;
                },
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 4.h,
                  vertical: 18.v,
                ),
              )
            ],
          ),
          actions: [
            CustomElevatedButton(
              height: 36.v,
              width: 70.h,
              text: "lbl_save".tr,
              buttonStyle: CustomButtonStyles.fillYellowA,
              buttonTextStyle: CustomTextStyles.bodySmallBlack90012,
              // onPressed: () => onTapAdddesigns(context),
            )
          ],
        );
      },
    );
  }

  void onTapTxtView(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: appTheme.primarycolor,
        title: Text(
          'View Shape',
          style: CustomTextStyles.aBeeZeeWhiteA700,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60.v,
              width: 46.h,
              decoration: BoxDecoration(
                color: appTheme.red70001,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBlue700.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder8,
            ),
            child: Text(
              'Edit',
              textAlign: TextAlign.left,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(width: 4.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.fillRed900.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder8,
              ),
              child: Text(
                'Delete',
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Handles the "Delete" button action.
  void onTapTxtDelete(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: appTheme.primarycolor,
        title: Text(
          'Delete Shape',
          style: CustomTextStyles.aBeeZeeWhiteA700,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60.v,
              width: 46.h,
              decoration: BoxDecoration(
                color: appTheme.red70001,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGreen.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder8,
            ),
            child: Text(
              'Cancel',
              textAlign: TextAlign.left,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(width: 4.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(2.h),
              decoration: AppDecoration.fillRed900.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder8,
              ),
              child: Text(
                'Delete',
                textAlign: TextAlign.left,
                style: theme.textTheme.bodySmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
