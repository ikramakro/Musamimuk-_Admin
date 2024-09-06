import 'dart:io';

import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/repository/repository.dart';
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
import 'bloc/add_shapes_bloc.dart';
import 'models/add_shapes_model.dart';

class AddShapesScreen extends StatelessWidget {
  AddShapesScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddShapesBloc>(
      create: (context) => AddShapesBloc(
        AddShapesState(addShapesModelObj: AddShapesModel()),
        Repository(), // Pass the repository instance
      )..add(AddShapesInitialEvent()),
      child: AddShapesScreen(),
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
                vertical: 6.v,
              ),
              child: Column(
                children: [
                  _buildAssetsRow(context),
                  SizedBox(height: 22.v),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 32.v),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildFormFields(context),
                        SizedBox(height: 36.v),
                        _buildImagePicker(context),
                        SizedBox(height: 32.v),
                        _buildSaveButton(context),
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

  Widget _buildFormFields(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 28.h, right: 38.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "lbl_shape_name".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    BlocSelector<AddShapesBloc, AddShapesState,
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
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "msg_select_category".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    BlocSelector<AddShapesBloc, AddShapesState,
                        SelectionPopupModel?>(
                      selector: (state) => state.selectedCategory,
                      builder: (context, selectedCategory) {
                        return BlocSelector<AddShapesBloc, AddShapesState,
                            AddShapesModel?>(
                          selector: (state) => state.addShapesModelObj,
                          builder: (context, addShapesModelObj) {
                            return CustomDropDown(
                              hintText: "Select Category",
                              items: addShapesModelObj?.dropdownItemList ?? [],
                              selectedItem: selectedCategory,
                              onChanged: (value) {
                                context.read<AddShapesBloc>().add(
                                    OnChangeDropDownEvent(
                                        title: value.id.toString()));
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          _buildTagsColumn(context),
        ],
      ),
    );
  }

  Widget _buildImagePicker(BuildContext context) {
    return BlocSelector<AddShapesBloc, AddShapesState, String?>(
      selector: (state) => state.imagePath,
      builder: (context, imagePath) {
        return GestureDetector(
          onTap: () {
            context.read<AddShapesBloc>().add(PickImageEvent(
                  onPickImageSuccess: () {
                    print('Image picked successfully');
                  },
                  onPickImageError: () {
                    print('Error picking image');
                  },
                ));
          },
          child: Container(
            height: imagePath == null ? 130.v : 200,
            width: imagePath == null ? double.maxFinite : 200,
            margin: EdgeInsets.only(left: 28.h, right: 38.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: imagePath != null
                  ? DecorationImage(
                      image: FileImage(File(imagePath)),
                      fit: BoxFit.cover,
                    )
                  : const DecorationImage(
                      image: AssetImage('assets/images/Rectangle 5942.png'),
                      fit: BoxFit.fill,
                    ),
            ),
            child: imagePath == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUploadSvgrepoCom,
                        height: 46.v,
                        width: 24.h,
                      ),
                      Text(
                        "msg_drop_shape_here".tr,
                        style: CustomTextStyles.bodyMediumWhiteA700,
                      ),
                    ],
                  )
                : null,
          ),
        );
      },
    );
  }

  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      width: 128.h,
      text: "lbl_save".tr,
      margin: EdgeInsets.only(right: 48.h),
      buttonStyle: CustomButtonStyles.outlineBlack,
      onPressed: () {
        if (_formKey.currentState?.validate() ?? false) {
          final formData = {
            "shape_name":
                context.read<AddShapesBloc>().state.nameController?.text,
            "tags": context
                .read<AddShapesBloc>()
                .state
                .writerelatedController
                ?.text,
          };
          context
              .read<AddShapesBloc>()
              .add(SubmitShapeEvent(formData: formData));
        }
      },
      alignment: Alignment.centerRight,
    );
  }

  // Other widget-building methods...

  onTapSave(BuildContext context) {
    context.read<AddShapesBloc>().add(
          CreateAddEvent(
            onCreateAddEventSuccess: () {
              _onAddShapeEventSuccess(context);
            },
            onCreateAddEventError: () {
              _onAddShapeEventError(context);
            },
          ),
        );
  }

  void _onAddShapeEventSuccess(BuildContext context) {
    // Handle success
  }

  void _onAddShapeEventError(BuildContext context) {
    // Handle error
  }
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
    title: BlocSelector<AddShapesBloc, AddShapesState, TextEditingController?>(
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

Widget _buildAssetsRow(BuildContext context) {
  return Container(
    width: double.maxFinite,
    margin: EdgeInsets.symmetric(horizontal: 18.h),
    child: Row(
      children: [
        Text(
          "lbl_assets".tr,
          style: CustomTextStyles.bodyLargeGray50002,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowPrevSmallSvgrepoComGray50002,
          height: 20.v,
          width: 10.h,
          margin: EdgeInsets.only(left: 8.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            "lbl_shapes".tr,
            style: CustomTextStyles.bodyLargeGray50002,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowPrevSmallSvgrepoComGray50002,
          height: 20.v,
          width: 10.h,
          margin: EdgeInsets.only(left: 4.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: Text(
            "lbl_add_shapes".tr,
            style: theme.textTheme.bodyLarge,
          ),
        )
      ],
    ),
  );
}

Widget _buildTagsColumn(BuildContext context) {
  return SizedBox(
    width: double.maxFinite,
    // padding: EdgeInsets.only(left: 28.h),
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
        BlocSelector<AddShapesBloc, AddShapesState, TextEditingController?>(
          selector: (state) => state.writerelatedController,
          builder: (context, writerelatedController) {
            return CustomTextFormField(
              width: 182.h,
              controller: writerelatedController,
              hintText: "msg_write_related_tags".tr,
              hintStyle: CustomTextStyles.bodyMediumVisbyRoundCFBluegray200,
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
  );
}

onTapSave(BuildContext context) {
  context.read<AddShapesBloc>().add(
        CreateAddEvent(
          onCreateAddEventSuccess: () {
            _onAddShapeEventSuccess(context);
          },
          onCreateAddEventError: () {
            _onAddShapeEventError(context);
          },
        ),
      );
}

void _onAddShapeEventSuccess(BuildContext context) {
  // Fluttertoast.showToast(
  //     msg:
  //         context.read<AddShapesBloc>().postAddShapeResp.message.toString() ??
  //             '');
}

void _onAddShapeEventError(BuildContext context) {
  // Fluttertoast.showToast(
  //   msg: "Error",
  // );
}
