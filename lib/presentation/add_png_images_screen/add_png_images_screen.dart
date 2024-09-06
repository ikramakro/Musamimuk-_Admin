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
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/add_png_images_bloc.dart';
import 'models/add_png_images_model.dart';

class AddPngImagesScreen extends StatelessWidget {
  AddPngImagesScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static Widget builder(BuildContext context) {
    return BlocProvider<AddPngImagesBloc>(
      create: (context) => AddPngImagesBloc(AddPngImagesState(
        addPngImagesModelObj: AddPngImagesModel(),
      ))
        ..add(AddPngImagesInitialEvent()),
      child: AddPngImagesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray90004,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 22.h,
                vertical: 14.v,
              ),
              child: Column(
                children: [
                  _buildOnlineDesignsRow(context),
                  SizedBox(height: 16.v),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 32.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildShapeNameRow(context),
                        SizedBox(height: 30.v),
                        _buildTagsRow(context),
                        SizedBox(height: 30.v),
                        Container(
                          height: 168.v,
                          width: double.maxFinite,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            right: 38.h,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: 44.v),
                                  child: Text(
                                    "msg_drop_shape_here".tr,
                                    style: CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                ),
                              ),
                              Container(
                                height: 168.v,
                                padding: EdgeInsets.only(top: 44.v),
                                decoration:
                                    AppDecoration.outlineBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder4,
                                ),
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgUploadSvgrepoCom,
                                      height: 46.v,
                                      width: 24.h,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 30.v),
                        CustomElevatedButton(
                          height: 48.v,
                          width: 128.h,
                          text: "lbl_save".tr,
                          margin: EdgeInsets.only(right: 48.h),
                          buttonStyle: CustomButtonStyles.outlineBlack,
                          onPressed: () {
                            onTapSave(context);
                          },
                          alignment: Alignment.centerRight,
                        ),
                        SizedBox(height: 66.v)
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v)
                ],
              ),
            ),
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
      title: BlocSelector<AddPngImagesBloc, AddPngImagesState,
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

  Widget _buildOnlineDesignsRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Text(
            "lbl_online_designs".tr,
            style: CustomTextStyles.bodyLargeGray50002,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowPrevSmallSvgrepoComGray50002,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 4.h),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "msg_add_online_design".tr,
              style: theme.textTheme.bodyLarge,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildShapeNameRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_shape_name".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                BlocSelector<AddPngImagesBloc, AddPngImagesState,
                    TextEditingController?>(
                  selector: (state) => state.nameController,
                  builder: (context, nameController) {
                    return CustomTextFormField(
                      controller: nameController,
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
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_category".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 56.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "msg_select_main_category".tr,
                          style: CustomTextStyles
                              .bodyMediumVisbyRoundCFBluegray200,
                        ),
                      ),
                      BlocSelector<AddPngImagesBloc, AddPngImagesState,
                          AddPngImagesModel?>(
                        selector: (state) => state.addPngImagesModelObj,
                        builder: (context, addPngImagesModelObj) {
                          return CustomDropDown(
                            items: addPngImagesModelObj?.dropdownItemList ?? [],
                            onChanged: (value) {},
                          );
                        },
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

  Widget _buildTagsRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28.h),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_tags".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                BlocSelector<AddPngImagesBloc, AddPngImagesState,
                    TextEditingController?>(
                  selector: (state) => state.writerelatedController,
                  builder: (context, writerelatedController) {
                    return CustomTextFormField(
                      controller: writerelatedController,
                      hintText: "msg_write_related_tags".tr,
                      hintStyle:
                          CustomTextStyles.bodyMediumVisbyRoundCFBluegray200,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 18.v,
                      ),
                    );
                  },
                )
              ],
            ),
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_sub_category".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 56.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "msg_select_sub_category".tr,
                          style: CustomTextStyles.bodyMediumBluegray20013,
                        ),
                      ),
                      BlocSelector<AddPngImagesBloc, AddPngImagesState,
                          AddPngImagesModel?>(
                        selector: (state) => state.addPngImagesModelObj,
                        builder: (context, addPngImagesModelObj) {
                          return CustomDropDown(
                            onChanged: (value) {},
                            items:
                                addPngImagesModelObj?.dropdownItemList1 ?? [],
                          );
                        },
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

  onTapSave(BuildContext context) {
    context.read<AddPngImagesBloc>().add(
          CreateAddEvent(
            onCreateAddEventSuccess: () {
              _onAddPngEventSuccess(context);
            },
            onCreateAddEventError: () {
              _onAddPngEventError(context);
            },
          ),
        );
  }

  void _onAddPngEventSuccess(BuildContext context) {
    // Fluttertoast.showToast(
    //     msg: context
    //             .read<AddPngImagesBloc>()
    //             .postAddPngResp
    //             .message
    //             .toString() ??
    //         '');
  }

  void _onAddPngEventError(BuildContext context) {
    // Fluttertoast.showToast(
    //   msg: "Error",
    // );
  }
}
