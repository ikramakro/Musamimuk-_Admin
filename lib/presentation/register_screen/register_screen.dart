import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/register_bloc.dart';
import 'models/register_model.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => RegisterBloc(RegisterState(
        registerModelObj: RegisterModel(),
      ))
        ..add(RegisterInitialEvent()),
      child: const RegisterScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.primarycolor,
        resizeToAvoidBottomInset: false,
        body: Row(
          children: [
            SizedBox(
              height: 768.v,
              width: 144.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPexelsTeonaSwift6913825768x144,
                    height: 768.v,
                    width: double.maxFinite,
                  ),
                  Container(
                    height: 768.v,
                    padding: EdgeInsets.only(top: 200.v),
                    decoration: AppDecoration.fillGrayBf,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMusammimuk02,
                          height: 286.v,
                          width: 126.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 434.v,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.all(22.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "lbl_welcome_back".tr,
                              style:
                                  CustomTextStyles.titleLargeWorkSansYellow500,
                            ),
                          ),
                          SizedBox(height: 38.v),
                          _buildUsernameSection(context),
                          SizedBox(height: 10.v),
                          _buildEmailSection(context),
                          SizedBox(height: 8.v),
                          _buildPasswordSection(context),
                          SizedBox(height: 12.v),
                          _buildRegisterAsSection(context),
                          SizedBox(height: 32.v),
                          CustomElevatedButton(
                            height: 32.v,
                            text: "lbl_register".tr,
                            margin: EdgeInsets.only(
                              left: 10.h,
                              right: 6.h,
                            ),
                            onPressed: () {
                              onTapRegister(context);
                            },
                          ),
                          SizedBox(height: 26.v)
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 14.v),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "msg_make_your_own_account".tr,
                              style: CustomTextStyles.titleSmallBluegray10002,
                            ),
                            SizedBox(height: 340.v),
                            GestureDetector(
                              onTap: () {
                                onTapTxtAlreadyhavean(context);
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_already_have_an2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumVisbyRoundCFBluegray100,
                                    ),
                                    const TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "lbl_login".tr,
                                      style:
                                          CustomTextStyles.titleSmallYellow500,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
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
    );
  }

  Widget _buildUsernameSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 6.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_username".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
          BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
            selector: (state) => state.userNameController,
            builder: (context, userNameController) {
              return CustomTextFormField(
                controller: userNameController,
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 6.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_email".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
          BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
            selector: (state) => state.emailController,
            builder: (context, emailController) {
              return CustomTextFormField(
                controller: emailController,
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 6.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_password".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
          BlocSelector<RegisterBloc, RegisterState, TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                controller: passwordController,
                textInputAction: TextInputAction.done,
                obscureText: true,
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buildRegisterAsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 6.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_register_as".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
          BlocSelector<RegisterBloc, RegisterState, RegisterModel?>(
            selector: (state) => state.registerModelObj,
            builder: (context, registerModelObj) {
              return CustomDropDown(
                onChanged: (value) {},
                icon: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowDown,
                    height: 14.v,
                    width: 6.h,
                  ),
                ),
                hintText: "lbl_choose_role".tr,
                items: registerModelObj?.dropdownItemList ?? [],
              );
            },
          )
        ],
      ),
    );
  }

  onTapRegister(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }

  onTapTxtAlreadyhavean(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }
}
