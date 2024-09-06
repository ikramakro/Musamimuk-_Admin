import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_page_bloc.dart';
import 'models/login_page_model.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({Key? key})
      : super(
          key: key,
        );
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
      create: (context) => LoginPageBloc(LoginPageState(
        loginPageModelObj: LoginPageModel(),
      ))
        ..add(LoginPageInitialEvent()),
      child: LoginPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.primarycolor,
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.width / 2.3,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgbg,
                          height: double.infinity,
                          width: double.maxFinite,
                          // fit: BoxFit.contain,
                        ),
                        Container(
                          height: double.infinity,
                          width: double.maxFinite,
                          decoration: AppDecoration.fillGrayBf,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMusammimuk02,
                          // height: 226.v,
                          // width: double.infinity,
                          // fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 500,
                      padding: EdgeInsets.symmetric(
                        horizontal: 100.h,
                        vertical: 26.v,
                      ),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "lbl_welcome_back".tr,
                              style:
                                  CustomTextStyles.titleLargeWorkSansYellow500,
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "msg_login_to_continue".tr,
                              style: CustomTextStyles.bodySmallVisbyRoundCF,
                            ),
                            SizedBox(height: 34.v),
                            _buildEmailSection(context),
                            SizedBox(height: 10.v),
                            _buildPasswordSection(context),
                            SizedBox(height: 6.v),
                            Text(
                              "msg_forgot_password".tr,
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(height: 34.v),
                            CustomElevatedButton(
                              onPressed: () {
                                context
                                    .read<LoginPageBloc>()
                                    .add(LoginButtonEvent());
                              },
                              height: 36.v,
                              // width: 148.h,
                              text: "lbl_login".tr,
                              // margin: EdgeInsets.only(left: 6.h),
                              buttonStyle: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      appTheme.yellow500)),
                            ),
                            SizedBox(height: 34.v),
                            InkWell(
                              onTap: () {
                                NavigatorService.pushNamed(
                                    AppRoutes.registerScreen);
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_don_t_have_an_account2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumVisbyRoundCFBluegray100,
                                    ),
                                    TextSpan(
                                      text: " ",
                                    ),
                                    TextSpan(
                                      text: "lbl_register".tr,
                                      style:
                                          CustomTextStyles.titleSmallYellow500,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: CustomTextStyles.titleSmallWhiteA700,
        ),
        SizedBox(height: 6.v),
        BlocSelector<LoginPageBloc, LoginPageState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
              // width: 148.h,
              hintText: 'Enter Your Email Here',
              controller: emailController,
            );
          },
        )
      ],
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      // margin: EdgeInsets.only(left: 6.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: CustomTextStyles.titleSmallWhiteA700,
          ),
          SizedBox(height: 8.v),
          BlocSelector<LoginPageBloc, LoginPageState, TextEditingController?>(
            selector: (state) => state.passwordController,
            builder: (context, passwordController) {
              return CustomTextFormField(
                // width: 148.h,
                hintText: '********************',
                controller: passwordController,
                // textInputAction: TextInputAction.done,
                obscureText: true,
              );
            },
          )
        ],
      ),
    );
  }
}
