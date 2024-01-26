import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';
import 'package:mealmate/widgets/custom_radio_button.dart';
import 'package:mealmate/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = [
    "msg_keep_me_signed_in",
    "msg_email_me_about_updates"
  ];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup957,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 23.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 34.v),
                    CustomImageView(
                      imagePath: ImageConstant.img399844149441,
                      height: 233.adaptSize,
                      width: 233.adaptSize,
                      radius: BorderRadius.circular(
                        89.h,
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Column(
                      children: [
                        Text(
                          "Lets Set up your Account!",
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 40.v),
                        _buildUserName(context),
                        SizedBox(height: 12.v),
                        _buildEmail(context),
                        SizedBox(height: 12.v),
                        _buildPassword(context),
                        SizedBox(height: 19.v),
                        _buildGroup935(context),
                        SizedBox(height: 43.v),
                        _buildCreateAccount(context),
                        SizedBox(height: 22.v),
                        Text(
                          "Already have an account?",
                          style: CustomTextStyles
                              .labelLargeAbhayaLibreMediumGreenA200
                              .copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserName(BuildContext context) {
    return CustomTextFormField(
      controller: userNameController,
      hintText: "Username",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 17.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconlyBulkProfile,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 20.v,
        right: 30.h,
        bottom: 20.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 16.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconlyBulkMessage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
      contentPadding: EdgeInsets.only(
        top: 20.v,
        right: 30.h,
        bottom: 20.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 17.v, 16.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconlyBulkLock,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 17.v, 20.h, 16.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEye,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 57.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 20.v),
    );
  }

  /// Section Widget
  Widget _buildGroup935(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 168.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 30.h),
              child: CustomRadioButton(
                text: "Keep Me Signed In",
                value: radioList[0],
                groupValue: radioGroup,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                onChange: (value) {
                  radioGroup = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: CustomRadioButton(
                text: "Email Me About Updates",
                value: radioList[1],
                groupValue: radioGroup,
                padding: EdgeInsets.symmetric(vertical: 3.v),
                onChange: (value) {
                  radioGroup = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateAccount(BuildContext context) {
    return CustomElevatedButton(
      width: 175.h,
      text: "Create Account",
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGreenAToGreenADecoration,
    );
  }
}
